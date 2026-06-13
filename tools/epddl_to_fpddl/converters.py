from __future__ import annotations

import itertools
import json
import re
import shutil
from collections import deque
from dataclasses import dataclass
from pathlib import Path
from typing import Any

from .common import CONVERTED_ROOT, JPM_ROOT, atom_suffix, designated_labels, fpddl_name, quoted_tf


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def lower_agents(task: dict[str, Any]) -> list[str]:
    return [fpddl_name(agent) for agent in task["language"]["agents"]]


def copy_support_files(output_dir: Path, benchmark_dir: str, filenames: list[str]) -> None:
    src_dir = JPM_ROOT / "benchmarks" / benchmark_dir
    for filename in filenames:
        shutil.copy2(src_dir / filename, output_dir / filename)


def copy_converted_support_files(output_dir: Path, template_dir: str, filenames: list[str]) -> None:
    src_dir = CONVERTED_ROOT / template_dir
    for filename in filenames:
        shutil.copy2(src_dir / filename, output_dir / filename)


def render_grapevine_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    secret_suffixes = [
        atom_suffix(atom, "secret_")
        for atom in task["language"]["atoms"]
        if atom.startswith("secret_")
    ]
    labels = designated_labels(task)

    agent_names = [fpddl_name(agent) for agent in agents]
    secret_names = [f"{fpddl_name(suffix)}s" for suffix in secret_suffixes]

    goal_lines: list[str] = []
    formulas = task["goal"]["formula"].get("formulas", [])
    for item in formulas:
        atom = item["formula"]
        suffix = atom_suffix(atom, "secret_")
        if suffix is None:
            raise ValueError(f"unsupported grapevine goal atom {atom!r}")
        target = quoted_tf(atom in labels)
        secret = f"{fpddl_name(suffix)}s"
        for agent in item["modality-index"]:
            goal_lines.append(
                f'            (= (@ep ("+ b [{fpddl_name(agent)}]") '
                f"(= (shared_value {secret}) {target})) ep.true)"
            )

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain grapevine)",
        "",
        "    (:agents",
        f"        {' '.join(agent_names)} - agent",
        "    )",
        "",
        "    (:objects",
        f"        {' '.join(secret_names)} - secret",
        "    )",
        "",
        "    (:init",
    ]

    for agent in agents:
        loc = 1 if f"in-left-room_{agent}" in labels else 2
        lines.append(f"        (assign (agent_loc {fpddl_name(agent)}) {loc})")
    lines.append("")

    for secret in secret_names:
        lines.append(f"        (assign (shared_loc {secret}) 0)")
    lines.append("")

    for agent in agents:
        for suffix in secret_suffixes:
            own = 1 if agent == suffix else 0
            lines.append(f"        (assign (own {fpddl_name(agent)} {fpddl_name(suffix)}s) {own})")
        lines.append("")

    lines.append("        (assign (sharing) 0)")
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(f"        (assign (secret_value {fpddl_name(suffix)}s) {quoted_tf(truth)})")
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(
            f"        (assign (secret_lyging_value {fpddl_name(suffix)}s) "
            f"{quoted_tf(not truth)})"
        )
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(f"        (assign (shared_value {fpddl_name(suffix)}s) {quoted_tf(truth)})")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (agent_loc integer [1,2])",
            "        (shared_loc integer [0,2])",
            "        (own integer [0,1])",
            "        (sharing integer [0,1])",
            "        (secret_value enumerate ['t','f'])",
            "        (secret_lyging_value enumerate ['t','f'])",
            "        (shared_value enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_grapevine(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    copy_support_files(output_dir, "grapevine", ["domain.pddl", "grapevine.py"])
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_grapevine_problem(task, problem_name))
    return {"problem_files": [problem_path.name], "support_files": ["domain.pddl", "grapevine.py"]}


def render_gossip_domain(task: dict[str, Any]) -> str:
    agents = lower_agents(task)
    lines: list[str] = [
        "(define",
        "    (domain gossip_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (delivered ?receiver - agent ?owner - agent)",
        "    )",
        "",
    ]

    for owner in agents:
        for receiver in agents:
            if owner == receiver:
                continue
            lines.extend(
                [
                    f"    (:action tell_{owner}_{receiver}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (delivered {receiver} {owner}) 0)",
                    "        )",
                    "        :effect (and",
                    f"            (assign (delivered {receiver} {owner}) 1)",
                    "        )",
                    "    )",
                    "",
                ]
            )

    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def render_gossip_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    labels = designated_labels(task)
    lower = [fpddl_name(agent) for agent in agents]

    goal_lines: list[str] = []
    formulas = task["goal"]["formula"].get("formulas", [])
    for item in formulas:
        suffix = atom_suffix(item["formula"], "secret_")
        if suffix is None:
            raise ValueError(f"unsupported gossip goal atom {item['formula']!r}")
        if f"secret_{suffix}" not in labels:
            raise ValueError("gossip converter expects each source secret atom to hold initially")
        for agent in item["modality-index"]:
            goal_lines.append(f"            (= (delivered {fpddl_name(agent)} {fpddl_name(suffix)}) 1)")

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain gossip_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(lower)} - agent",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
    ]
    for receiver in lower:
        for owner in lower:
            initial_value = 1 if receiver == owner else 0
            lines.append(f"        (assign (delivered {receiver} {owner}) {initial_value})")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (delivered integer [0,1])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


HARD_GOSSIP_SEQUENCE = [
    "give-earpiece_D_B",
    "lie_I_A",
    "give-earpiece_D_A",
    "lie_I_B",
    "catch_D_I",
]


def is_hard_gossip_task(task: dict[str, Any]) -> bool:
    return any(
        action_name.startswith(("lie_", "give-earpiece_", "catch_"))
        for action_name in task.get("actions", {})
    )


def hard_gossip_roles(task: dict[str, Any]) -> tuple[list[str], list[str], list[str]]:
    available = set(task["actions"])
    sequence = [action for action in HARD_GOSSIP_SEQUENCE if action in available]
    if len(sequence) != len(HARD_GOSSIP_SEQUENCE):
        missing = sorted(set(HARD_GOSSIP_SEQUENCE) - available)
        raise ValueError(f"Hard Gossip converter is missing expected actions: {missing}")

    detectives: set[str] = set()
    impostors: set[str] = set()
    normals: set[str] = set()
    for action_name in sequence:
        if action_name.startswith("give-earpiece_"):
            detective, normal = action_name[len("give-earpiece_") :].split("_", 1)
            detectives.add(detective)
            normals.add(normal)
        elif action_name.startswith("lie_"):
            impostor, normal = action_name[len("lie_") :].split("_", 1)
            impostors.add(impostor)
            normals.add(normal)
        elif action_name.startswith("catch_"):
            detective, impostor = action_name[len("catch_") :].split("_", 1)
            detectives.add(detective)
            impostors.add(impostor)

    return sorted(normals), sorted(detectives), sorted(impostors)


def render_hard_gossip_domain(task: dict[str, Any]) -> str:
    available = set(task["actions"])
    normals, detectives, impostors = hard_gossip_roles(task)

    action_lines: list[str] = []
    for detective in detectives:
        for normal in normals:
            action_name = f"give-earpiece_{detective}_{normal}"
            if action_name not in available:
                continue
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (role {detective}) 'detective')",
                    f"            (= (role {normal}) 'normal')",
                    f"            (= (spying {normal}) 'f')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (spying {normal}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    for impostor in impostors:
        for normal in normals:
            action_name = f"lie_{impostor}_{normal}"
            if action_name not in available:
                continue
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (role {impostor}) 'impostor')",
                    f"            (= (role {normal}) 'normal')",
                    f"            (= (secret_value {impostor}) 't')",
                    f"            (= (belief {normal} {impostor}) 'unknown')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (belief {normal} {impostor}) 'f')",
                    f"            (assign (impostor_view {impostor} {normal}) 'f')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    for detective in detectives:
        for impostor in impostors:
            action_name = f"catch_{detective}_{impostor}"
            if action_name not in available:
                continue
            preconditions = [
                f"            (= (role {detective}) 'detective')",
                f"            (= (role {impostor}) 'impostor')",
                f"            (= (secret_value {impostor}) 't')",
                f"            (= (belief {detective} {impostor}) 'unknown')",
                *[f"            (= (spying {normal}) 't')" for normal in normals],
                *[f"            (= (belief {normal} {impostor}) 'f')" for normal in normals],
            ]
            effects = [
                f"            (assign (belief {detective} {impostor}) 't')",
                *[f"            (assign (belief {normal} {impostor}) 't')" for normal in normals],
                *[
                    f"            (assign (impostor_view {impostor} {normal}) 'f')"
                    for normal in normals
                ],
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    *preconditions,
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )

    lines = [
        "(define",
        "    (domain hard_gossip_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (role ?a - agent)",
        "        (secret_value ?a - agent)",
        "        (spying ?a - agent)",
        "        (belief ?observer - agent ?owner - agent)",
        "        (impostor_view ?impostor - agent ?normal - agent)",
        "    )",
        "",
        *action_lines,
        ")",
        "",
    ]
    return "\n".join(lines)


def render_hard_gossip_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    normals, detectives, impostors = hard_gossip_roles(task)
    role_by_agent = {
        **{agent: "normal" for agent in normals},
        **{agent: "detective" for agent in detectives},
        **{agent: "impostor" for agent in impostors},
    }
    goal_lines: list[str] = []
    for impostor in impostors:
        for normal in normals:
            goal_lines.append(f"        (= (belief {normal} {impostor}) 't')")
            goal_lines.append(f"        (= (impostor_view {impostor} {normal}) 'f')")

    lines = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain hard_gossip_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
    ]
    for agent in agents:
        lines.append(f"        (assign (role {agent}) '{role_by_agent.get(agent, 'none')}')")
    for agent in agents:
        secret = "t" if agent in normals or agent in impostors else "f"
        lines.append(f"        (assign (secret_value {agent}) '{secret}')")
    for agent in agents:
        lines.append(f"        (assign (spying {agent}) 'f')")
    for observer in agents:
        for owner in agents:
            if observer == owner and (owner in normals or owner in impostors):
                belief = "t"
            else:
                belief = "unknown"
            lines.append(f"        (assign (belief {observer} {owner}) '{belief}')")
    for impostor in impostors:
        for normal in normals:
            lines.append(f"        (assign (impostor_view {impostor} {normal}) 'unknown')")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (role enumerate ['normal','detective','impostor','none'])",
            "        (secret_value enumerate ['t','f'])",
            "        (spying enumerate ['t','f'])",
            "        (belief enumerate ['t','f','unknown'])",
            "        (impostor_view enumerate ['t','f','unknown'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def render_gossip_external() -> str:
    return """import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "gossip_from_epddl"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None

    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME, handlers, logger_level=LOGGER_LEVEL)

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{var_name}] not found in functions")
        return True
"""


def convert_gossip(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    if is_hard_gossip_task(task):
        (output_dir / "domain.pddl").write_text(render_hard_gossip_domain(task))
        (output_dir / "gossip.py").write_text(render_all_visible_external("hard_gossip_from_epddl"))
        problem_path = output_dir / f"{problem_name}.pddl"
        problem_path.write_text(render_hard_gossip_problem(task, problem_name))
        return {"problem_files": [problem_path.name], "support_files": ["domain.pddl", "gossip.py"]}

    (output_dir / "domain.pddl").write_text(render_gossip_domain(task))
    (output_dir / "gossip.py").write_text(render_gossip_external())
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_gossip_problem(task, problem_name))
    return {"problem_files": [problem_path.name], "support_files": ["domain.pddl", "gossip.py"]}


def source_path(task: dict[str, Any], key: str) -> Path:
    raw = task.get(key)
    if not raw:
        raise ValueError(f"task is missing required source metadata {key!r}")
    return Path(raw)


def conjunction_atoms(formula: dict[str, Any] | str) -> list[str]:
    return [atom for atom, truth in blocks_world_condition_literals(formula) if truth]


def blocks_world_condition_literals(formula: dict[str, Any] | str) -> list[tuple[str, bool]]:
    if isinstance(formula, str):
        if formula == "true":
            return []
        if formula == "false":
            raise ValueError("unexpected false formula in conjunction context")
        return [(formula, True)]

    connective = formula.get("connective")
    if connective == "and":
        atoms: list[tuple[str, bool]] = []
        for item in formula.get("formulas", []):
            atoms.extend(blocks_world_condition_literals(item))
        return atoms
    if connective == "not" and isinstance(formula.get("formula"), str):
        atom = formula["formula"]
        if atom in {"true", "false"}:
            raise ValueError(f"unexpected negated constant in Blocks-World formula {formula!r}")
        return [(atom, False)]
    if "modality-name" in formula:
        return blocks_world_condition_literals(formula["formula"])
    if connective in {"imply", "or"}:
        # The current Blocks-World compilation is an optimistic finite-domain
        # relaxation; modal/disjunctive guards are checked by EPDDL validation.
        return []
    raise ValueError(f"unsupported conjunction formula {formula!r}")


def format_literal_condition(atom: str, truth: bool) -> str:
    return f"            (= ({atom}) {quoted_tf(truth)})"


def parse_blocks_world_initial_labels(task: dict[str, Any]) -> set[str]:
    designated = designated_labels(task)
    if designated:
        return designated

    text = source_path(task, "_source_problem_path").read_text()
    match = re.search(r":labels\s*\(\s*\w+\s*\(:and(?P<body>.*?)\)\s*\)\s*:designated", text, re.DOTALL)
    if not match:
        raise ValueError("could not recover Blocks-World initial labels from source problem")

    body = match.group("body")
    atoms: set[str] = set()
    for name, first, second in re.findall(
        r"\((clear|on)\s+([A-Za-z0-9_-]+)(?:\s+([A-Za-z0-9_-]+))?\)",
        body,
    ):
        if name == "clear":
            atoms.add(f"clear_{first}")
        elif second:
            atoms.add(f"on_{first}_{second}")
        else:
            raise ValueError(f"malformed Blocks-World atom in source problem: {(name, first, second)!r}")

    if not atoms:
        raise ValueError("source problem did not yield any Blocks-World initial atoms")
    return atoms


def eval_blocks_world_effect_formula(formula: dict[str, Any] | str, *, atom: str, value: bool) -> bool:
    if isinstance(formula, str):
        if formula == "true":
            return True
        if formula == "false":
            return False
        if formula == atom:
            return value
        raise ValueError(f"unexpected atom reference {formula!r} in Blocks-World effect for {atom!r}")

    connective = formula.get("connective")
    if connective == "and":
        return all(eval_blocks_world_effect_formula(item, atom=atom, value=value) for item in formula["formulas"])
    if connective == "or":
        return any(eval_blocks_world_effect_formula(item, atom=atom, value=value) for item in formula["formulas"])
    if connective == "not":
        return not eval_blocks_world_effect_formula(formula["formula"], atom=atom, value=value)
    raise ValueError(f"unsupported Blocks-World effect connective {connective!r}")


def constant_blocks_world_effect(effect: dict[str, Any], atom: str) -> bool:
    formula = effect["formula"]
    false_case = eval_blocks_world_effect_formula(formula, atom=atom, value=False)
    true_case = eval_blocks_world_effect_formula(formula, atom=atom, value=True)
    if false_case != true_case:
        raise ValueError(f"non-constant Blocks-World effect for {atom!r}: {effect!r}")
    return false_case


def render_all_visible_external(logger_name: str) -> str:
    return f"""import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "{logger_name}"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None

    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME, handlers, logger_level=LOGGER_LEVEL)

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{{agent_index}}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{{agent_index}}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{{var_name}}] not found in functions")
        return True
"""


def render_blocks_world_domain(task: dict[str, Any]) -> str:
    atoms = list(task["language"]["atoms"])
    action_lines: list[str] = []

    for action_name, action in sorted(task["actions"].items()):
        event_name = action["events"][0]
        precondition_formula = action["preconditions"][event_name]["formula"]
        precondition_literals = blocks_world_condition_literals(precondition_formula)
        effect_lines: list[str] = []
        event_effects = action["effects"].get(event_name) or {}
        for atom, effect in sorted(event_effects.items()):
            truth = constant_blocks_world_effect(effect, atom)
            effect_lines.append(f"            (assign ({atom}) {quoted_tf(truth)})")

        action_lines.extend(
            [
                f"    (:action {action_name}",
                "        :parameters ()",
                "        :precondition (and",
                *[format_literal_condition(atom, truth) for atom, truth in precondition_literals],
                "        )",
                "        :effect (and",
                *effect_lines,
                "        )",
                "    )",
                "",
            ]
        )

    lines: list[str] = [
        "(define",
        "    (domain blocks_world_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        *[f"        ({atom})" for atom in atoms],
        "    )",
        "",
        *action_lines,
        ")",
        "",
    ]
    return "\n".join(lines)


def render_blocks_world_problem(task: dict[str, Any], problem_name: str) -> str:
    atoms = list(task["language"]["atoms"])
    initial_labels = parse_blocks_world_initial_labels(task)
    goal_literals = blocks_world_condition_literals(task["goal"]["formula"])
    agents = lower_agents(task)

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain blocks_world_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
        *[f"        (assign ({atom}) {quoted_tf(atom in initial_labels)})" for atom in atoms],
        "    )",
        "",
        "    (:goal (and",
        *[f"        (= ({atom}) {quoted_tf(truth)})" for atom, truth in goal_literals],
        "    ))",
        "",
        "    (:ranges",
        *[f"        ({atom} enumerate ['t','f'])" for atom in atoms],
        "    )",
        "",
        "    (:rules",
        "    )",
        ")",
        "",
    ]
    return "\n".join(lines)


def convert_blocks_world(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_blocks_world_domain(task))
    (output_dir / "blocks_world.py").write_text(render_all_visible_external("blocks_world_from_epddl"))
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_blocks_world_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "blocks_world.py"],
    }


def alive_worlds(task: dict[str, Any]) -> tuple[str, ...]:
    return tuple(task["initial-state"]["worlds"])


def evaluate_del_formula(task: dict[str, Any], alive: set[str], world: str, formula: dict[str, Any] | str) -> bool:
    if isinstance(formula, str):
        if formula == "true":
            return True
        if formula == "false":
            return False
        return formula in task["initial-state"]["labels"][world]

    if "connective" in formula:
        connective = formula["connective"]
        if connective == "and":
            return all(evaluate_del_formula(task, alive, world, item) for item in formula["formulas"])
        if connective == "or":
            return any(evaluate_del_formula(task, alive, world, item) for item in formula["formulas"])
        if connective == "not":
            return not evaluate_del_formula(task, alive, world, formula["formula"])
        raise ValueError(f"unsupported connective {connective!r} in Consecutive-Numbers formula")

    modality = formula.get("modality-name")
    if modality == "box":
        agent = formula["modality-index"][0]
        related = [
            other
            for other in task["initial-state"]["relations"][agent][world]
            if other in alive
        ]
        return all(evaluate_del_formula(task, alive, other, formula["formula"]) for other in related)

    raise ValueError(f"unsupported DEL formula in Consecutive-Numbers converter: {formula!r}")


def cn_numbers(task: dict[str, Any]) -> list[str]:
    numbers = sorted(
        {
            atom.split("_", 2)[2]
            for atom in task["language"]["atoms"]
            if atom.startswith("has_")
        }
    )
    if not numbers:
        raise ValueError("Consecutive-Numbers converter found no has_* atoms")
    return numbers


def cn_action_specs(task: dict[str, Any]) -> list[tuple[str, dict[str, Any]]]:
    agents = list(task["language"]["agents"])
    numbers = cn_numbers(task)
    specs: list[tuple[str, dict[str, Any]]] = []
    for actor in agents:
        for target in agents:
            if actor == target:
                continue
            for number in numbers:
                action_name = f"ann_{fpddl_name(actor)}_{fpddl_name(target)}_{fpddl_name(number)}"
                precondition = {
                    "connective": "not",
                    "formula": {
                        "modality-name": "box",
                        "modality-index": [actor],
                        "formula": f"has_{target}_{number}",
                    },
                }
                specs.append((action_name, precondition))
    return specs


def cn_designated(task: dict[str, Any], alive: set[str]) -> list[str]:
    return [world for world in task["initial-state"]["designated"] if world in alive]


def cn_applicable(task: dict[str, Any], alive: set[str], precondition: dict[str, Any]) -> bool:
    designated = cn_designated(task, alive)
    return bool(designated) and all(
        evaluate_del_formula(task, alive, world, precondition) for world in designated
    )


def cn_successor(task: dict[str, Any], alive: set[str], precondition: dict[str, Any]) -> tuple[str, ...]:
    return tuple(
        world
        for world in task["initial-state"]["worlds"]
        if world in alive and evaluate_del_formula(task, alive, world, precondition)
    )


def cn_goal_holds(task: dict[str, Any], alive_state: tuple[str, ...]) -> bool:
    alive = set(alive_state)
    designated = cn_designated(task, alive)
    return bool(designated) and all(
        evaluate_del_formula(task, alive, world, task["goal"]["formula"]) for world in designated
    )


def cn_reachable_graph(
    task: dict[str, Any],
) -> tuple[list[tuple[str, ...]], dict[tuple[int, str], int], set[int]]:
    action_specs = cn_action_specs(task)
    initial = alive_worlds(task)
    queue = [initial]
    states = [initial]
    state_ids = {initial: 0}
    transitions: dict[tuple[int, str], int] = {}

    while queue:
        current = queue.pop(0)
        current_id = state_ids[current]
        alive = set(current)
        for action_name, precondition in action_specs:
            if not cn_applicable(task, alive, precondition):
                continue
            successor = cn_successor(task, alive, precondition)
            if successor not in state_ids:
                state_ids[successor] = len(states)
                states.append(successor)
                queue.append(successor)
            transitions[(current_id, action_name)] = state_ids[successor]

    goal_states = {
        idx
        for idx, state in enumerate(states)
        if cn_goal_holds(task, state)
    }
    return states, transitions, goal_states


def render_consecutive_numbers_domain(task: dict[str, Any]) -> str:
    _states, transitions, goal_states = cn_reachable_graph(task)
    action_blocks: list[str] = []

    for (source_id, action_name), target_id in sorted(transitions.items()):
        suffix = f"__from_{source_id}_to_{target_id}"
        goal_flag = "'t'" if target_id in goal_states else "'f'"
        action_blocks.extend(
            [
                f"    (:action {action_name}{suffix}",
                "        :parameters ()",
                "        :precondition (and",
                f"            (= (belief_state) {source_id})",
                "        )",
                "        :effect (and",
                f"            (assign (belief_state) {target_id})",
                f"            (assign (goal_reached) {goal_flag})",
                "        )",
                "    )",
                "",
            ]
        )

    lines: list[str] = [
        "(define",
        "    (domain consecutive_numbers_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (belief_state)",
        "        (goal_reached)",
        "    )",
        "",
        *action_blocks,
        ")",
        "",
    ]
    return "\n".join(lines)


def render_consecutive_numbers_problem(task: dict[str, Any], problem_name: str) -> str:
    states, _transitions, goal_states = cn_reachable_graph(task)
    initial_goal = "'t'" if 0 in goal_states else "'f'"
    agents = lower_agents(task)

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain consecutive_numbers_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
        "        (assign (belief_state) 0)",
        f"        (assign (goal_reached) {initial_goal})",
        "    )",
        "",
        "    (:goal (and",
        "        (= (goal_reached) 't')",
        "    ))",
        "",
        "    (:ranges",
        f"        (belief_state integer [0,{max(0, len(states) - 1)}])",
        "        (goal_reached enumerate ['t','f'])",
        "    )",
        "",
        "    (:rules",
        "    )",
        ")",
        "",
    ]
    return "\n".join(lines)


def convert_consecutive_numbers(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_consecutive_numbers_domain(task))
    (output_dir / "consecutive_numbers.py").write_text(
        render_all_visible_external("consecutive_numbers_from_epddl")
    )
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_consecutive_numbers_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "consecutive_numbers.py"],
    }


@dataclass(frozen=True)
class TigerWorld:
    princess_room: str
    tiger_rooms: tuple[str, ...]


@dataclass(frozen=True)
class TigerSpec:
    rooms: tuple[str, ...]
    actual_knight_room: str
    actual_princess_room: str
    actual_tiger_rooms: tuple[str, ...]
    right_edges: tuple[tuple[str, str], ...]


@dataclass(frozen=True)
class TigerState:
    knight_room: str
    opened_rooms: tuple[str, ...]
    saved_princess: bool
    alive_world_ids: tuple[int, ...]


def parse_tiger_room_order(problem_text: str) -> tuple[str, ...]:
    match = re.search(r"\(:objects(?P<body>.*?)\)\s*\n\s*\(:facts-init", problem_text, re.DOTALL)
    if match is None:
        raise ValueError("Tiger converter could not locate :objects declaration")
    body = match.group("body")
    room_chunk = re.search(r"([A-Za-z0-9_\-\s]+)-\s*room", body)
    if room_chunk is None:
        raise ValueError("Tiger converter could not recover room objects")
    rooms = tuple(token for token in room_chunk.group(1).split() if token)
    if not rooms:
        raise ValueError("Tiger converter found no rooms in :objects")
    return rooms


def parse_tiger_edges(problem_text: str) -> tuple[tuple[str, str], ...]:
    facts_match = re.search(r"\(:facts-init(?P<body>.*?)\)\s*\n\s*\(:init", problem_text, re.DOTALL)
    if facts_match is None:
        raise ValueError("Tiger converter could not locate :facts-init")
    body = facts_match.group("body")
    edges = tuple(re.findall(r"\(neighbor\s+([A-Za-z0-9_-]+)\s+([A-Za-z0-9_-]+)\)", body))
    if not edges:
        raise ValueError("Tiger converter found no neighbor facts")
    return edges


def parse_tiger_spec(problem_path: Path) -> TigerSpec:
    text = problem_path.read_text()
    rooms = parse_tiger_room_order(text)

    knight_match = re.search(r"\(at-knight\s+([A-Za-z0-9_-]+)\)", text)
    princess_match = re.search(r"\(at-princess\s+([A-Za-z0-9_-]+)\)", text)
    tiger_rooms = tuple(re.findall(r"\(tiger\s+([A-Za-z0-9_-]+)\)", text))

    if knight_match is None or princess_match is None or not tiger_rooms:
        raise ValueError("Tiger converter could not recover the designated world from :init")

    return TigerSpec(
        rooms=rooms,
        actual_knight_room=knight_match.group(1),
        actual_princess_room=princess_match.group(1),
        actual_tiger_rooms=tuple(sorted(tiger_rooms)),
        right_edges=parse_tiger_edges(text),
    )


def tiger_hidden_worlds(spec: TigerSpec) -> list[TigerWorld]:
    tiger_count = len(spec.actual_tiger_rooms)
    worlds: list[TigerWorld] = []
    for princess_room in spec.rooms:
        candidates = [room for room in spec.rooms if room != princess_room]
        for tiger_rooms in itertools.combinations(candidates, tiger_count):
            worlds.append(TigerWorld(princess_room, tuple(sorted(tiger_rooms))))
    return worlds


def tiger_actual_world_id(worlds: list[TigerWorld], spec: TigerSpec) -> int:
    target = TigerWorld(spec.actual_princess_room, tuple(sorted(spec.actual_tiger_rooms)))
    for idx, world in enumerate(worlds):
        if world == target:
            return idx
    raise ValueError("Tiger converter could not locate the designated hidden world")


def tiger_right_map(spec: TigerSpec) -> dict[str, str]:
    return dict(spec.right_edges)


def tiger_left_map(spec: TigerSpec) -> dict[str, str]:
    return {right: left for left, right in spec.right_edges}


def tiger_truth_partition(
    worlds: list[TigerWorld], alive_ids: tuple[int, ...], predicate
) -> set[bool]:
    return {predicate(worlds[idx]) for idx in alive_ids}


def tiger_knows_tiger(worlds: list[TigerWorld], alive_ids: tuple[int, ...], room: str) -> bool:
    return len(tiger_truth_partition(worlds, alive_ids, lambda world: room in world.tiger_rooms)) == 1


def tiger_known_tiger_value(
    worlds: list[TigerWorld], alive_ids: tuple[int, ...], room: str
) -> bool | None:
    values = tiger_truth_partition(worlds, alive_ids, lambda world: room in world.tiger_rooms)
    return next(iter(values)) if len(values) == 1 else None


def tiger_knows_princess(worlds: list[TigerWorld], alive_ids: tuple[int, ...], room: str) -> bool:
    return len(tiger_truth_partition(worlds, alive_ids, lambda world: world.princess_room == room)) == 1


def tiger_known_princess_value(
    worlds: list[TigerWorld], alive_ids: tuple[int, ...], room: str
) -> bool | None:
    values = tiger_truth_partition(worlds, alive_ids, lambda world: world.princess_room == room)
    return next(iter(values)) if len(values) == 1 else None


def tiger_goal_holds(spec: TigerSpec, worlds: list[TigerWorld], state: TigerState) -> bool:
    return state.saved_princess and all(
        tiger_knows_tiger(worlds, state.alive_world_ids, room) for room in spec.rooms
    )


def tiger_successors(
    spec: TigerSpec,
    worlds: list[TigerWorld],
    actual_world_id: int,
    state: TigerState,
) -> list[tuple[str, TigerState]]:
    actual_world = worlds[actual_world_id]
    right_map = tiger_right_map(spec)
    left_map = tiger_left_map(spec)
    room = state.knight_room
    successors: list[tuple[str, TigerState]] = []

    if room in left_map:
        to_room = left_map[room]
        successors.append(
            (
                f"left_{room}_{to_room}",
                TigerState(to_room, state.opened_rooms, state.saved_princess, state.alive_world_ids),
            )
        )
    if room in right_map:
        to_room = right_map[room]
        successors.append(
            (
                f"right_{room}_{to_room}",
                TigerState(to_room, state.opened_rooms, state.saved_princess, state.alive_world_ids),
            )
        )

    if not tiger_knows_tiger(worlds, state.alive_world_ids, room):
        actual_has_tiger = room in actual_world.tiger_rooms
        filtered = tuple(
            world_id
            for world_id in state.alive_world_ids
            if ((room in worlds[world_id].tiger_rooms) == actual_has_tiger)
        )
        successors.append(
            (
                f"listen_{room}",
                TigerState(room, state.opened_rooms, state.saved_princess, filtered),
            )
        )

    if not tiger_knows_princess(worlds, state.alive_world_ids, room):
        actual_has_princess = actual_world.princess_room == room
        filtered = tuple(
            world_id
            for world_id in state.alive_world_ids
            if ((worlds[world_id].princess_room == room) == actual_has_princess)
        )
        successors.append(
            (
                f"look_{room}",
                TigerState(room, state.opened_rooms, state.saved_princess, filtered),
            )
        )

    known_tiger = tiger_known_tiger_value(worlds, state.alive_world_ids, room)
    if room not in state.opened_rooms and known_tiger is False:
        successors.append(
            (
                f"open_{room}",
                TigerState(
                    room,
                    tuple(sorted((*state.opened_rooms, room))),
                    state.saved_princess,
                    state.alive_world_ids,
                ),
            )
        )

    known_princess = tiger_known_princess_value(worlds, state.alive_world_ids, room)
    if not state.saved_princess and room in state.opened_rooms and known_princess is True:
        successors.append(
            (
                f"save_princess_{room}",
                TigerState(room, state.opened_rooms, True, state.alive_world_ids),
            )
        )

    return successors


def tiger_reachable_graph(
    spec: TigerSpec,
) -> tuple[list[TigerState], dict[tuple[int, str], int], set[int]]:
    worlds = tiger_hidden_worlds(spec)
    actual_world_id = tiger_actual_world_id(worlds, spec)
    initial = TigerState(
        spec.actual_knight_room,
        tuple(),
        False,
        tuple(range(len(worlds))),
    )

    states = [initial]
    state_ids = {initial: 0}
    transitions: dict[tuple[int, str], int] = {}
    queue: deque[TigerState] = deque([initial])

    while queue:
        current = queue.popleft()
        source_id = state_ids[current]
        for action_name, successor in tiger_successors(spec, worlds, actual_world_id, current):
            if successor not in state_ids:
                state_ids[successor] = len(states)
                states.append(successor)
                queue.append(successor)
            transitions[(source_id, action_name)] = state_ids[successor]

    goal_states = {
        idx
        for idx, state in enumerate(states)
        if tiger_goal_holds(spec, worlds, state)
    }
    return states, transitions, goal_states


def render_tiger_domain(spec: TigerSpec) -> str:
    states, transitions, goal_states = tiger_reachable_graph(spec)
    action_blocks: list[str] = []

    for (source_id, action_name), target_id in sorted(transitions.items()):
        goal_flag = "'t'" if target_id in goal_states else "'f'"
        action_blocks.extend(
            [
                f"    (:action {action_name}__from_{source_id}_to_{target_id}",
                "        :parameters ()",
                "        :precondition (and",
                f"            (= (belief_state) {source_id})",
                "        )",
                "        :effect (and",
                f"            (assign (belief_state) {target_id})",
                f"            (assign (goal_reached) {goal_flag})",
                "        )",
                "    )",
                "",
            ]
        )

    return "\n".join(
        [
            "(define",
            "    (domain tiger_from_epddl)",
            "",
            "    (:types",
            "        agent",
            "    )",
            "",
            "    (:functions",
            "        (belief_state)",
            "        (goal_reached)",
            "    )",
            "",
            *action_blocks,
            ")",
            "",
        ]
    )


def render_tiger_problem(spec: TigerSpec, problem_name: str) -> str:
    states, _transitions, goal_states = tiger_reachable_graph(spec)
    initial_goal = "'t'" if 0 in goal_states else "'f'"
    return "\n".join(
        [
            "(define",
            f"    (problem {problem_name})",
            "    (:domain tiger_from_epddl)",
            "",
            "    (:agents",
            "        knight - agent",
            "    )",
            "",
            "    (:objects",
            "    )",
            "",
            "    (:init",
            "        (assign (belief_state) 0)",
            f"        (assign (goal_reached) {initial_goal})",
            "    )",
            "",
            "    (:goal (and",
            "        (= (goal_reached) 't')",
            "    ))",
            "",
            "    (:ranges",
            f"        (belief_state integer [0,{max(0, len(states) - 1)}])",
            "        (goal_reached enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )


def convert_tiger_from_sources(
    domain_path: Path,
    problem_path: Path,
    output_dir: Path,
    problem_name: str,
) -> dict[str, Any]:
    del domain_path  # The current Tiger converter is instance-driven from the source problem.
    spec = parse_tiger_spec(problem_path)
    (output_dir / "domain.pddl").write_text(render_tiger_domain(spec))
    (output_dir / "tiger.py").write_text(render_all_visible_external("tiger_from_epddl"))
    generated_problem = output_dir / f"{problem_name}.pddl"
    generated_problem.write_text(render_tiger_problem(spec, problem_name))
    return {
        "problem_files": [generated_problem.name],
        "support_files": ["domain.pddl", "tiger.py"],
    }


def render_amc_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    labels = designated_labels(task)
    children = [fpddl_name(agent) for agent in agents]

    goal = task["goal"]["formula"]
    goal_agent = fpddl_name(goal["modality-index"][0])
    goal_atom = goal["formula"]
    goal_truth = quoted_tf(goal_atom in labels)

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain muddy_children)",
        "",
        "    (:agents",
        f"        {' '.join(children)} - children",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
    ]
    for agent in agents:
        truth = f"muddy_{agent}" in labels
        lines.append(f"        (assign (muddy {fpddl_name(agent)}) {quoted_tf(truth)})")
    for child in children:
        lines.append(f"        (assign (asked {child}) 'not_asked')")
    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            f'        (= (@ep ("+ b [{goal_agent}]") (= (muddy {goal_agent}) {goal_truth})) ep.true)',
            "    ))",
            "",
            "    (:ranges",
            "        (muddy enumerate ['t','f'])",
            "        (asked enumerate ['not_asked','yes','no'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_active_muddy_child(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    support_files = ["domain.pddl", "muddy_children.py", "visibility.json"]
    copy_converted_support_files(output_dir, "active_muddy_child", support_files)
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_amc_problem(task, problem_name))
    return {"problem_files": [problem_path.name], "support_files": support_files}


def render_coin_domain(task: dict[str, Any]) -> str:
    agents = lower_agents(task)
    event_values = ["none"] + [f"peek_{agent}" for agent in agents] + [f"shout_{agent}" for agent in agents]
    primary_agent = agents[0]

    lines: list[str] = [
        "(define",
        "    (domain coin_in_the_box_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (tails)",
        "        (opened)",
        "        (announced)",
        "        (event)",
        "        (looking ?i - agent)",
        "        (has_key ?i - agent)",
        "        (peek_ready ?i - agent)",
        "        (peeked ?i - agent)",
        "    )",
        "",
    ]

    for agent in agents:
        lines.extend(
            [
                f"    (:action open_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                "            (= (opened) 'f')",
                f"            (= (looking {agent}) 't')",
                f"            (= (has_key {agent}) 't')",
                "        )",
                "        :effect (and",
                "            (assign (opened) 't')",
                "            (assign (event) 'none')",
                "        )",
                "    )",
                "",
            ]
        )

    for actor in agents:
        for target in agents:
            if actor == target:
                continue
            lines.extend(
                [
                    f"    (:action signal_{actor}_{target}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (looking {actor}) 't')",
                    f"            (= (looking {target}) 'f')",
                    "        )",
                "        :effect (and",
                    f"            (assign (looking {target}) 't')",
                    f"            (assign (peek_ready {target}) 't')",
                    "            (assign (event) 'none')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    for actor in agents:
        for target in agents:
            if actor == target:
                continue
            distract_effects = [
                f"            (assign (looking {target}) 'f')",
            ]
            if target == primary_agent:
                distract_effects.extend(
                    f"            (assign (peek_ready {other}) 't')"
                    for other in agents
                    if other != primary_agent
                )
            lines.extend(
                [
                    f"    (:action distract_{actor}_{target}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (looking {actor}) 't')",
                    f"            (= (looking {target}) 't')",
                    "        )",
                    "        :effect (and",
                    *distract_effects,
                    "            (assign (event) 'none')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    for agent in agents:
        peek_preconditions = [
            "            (= (opened) 't')",
        ]
        if agent != primary_agent:
            peek_preconditions.extend(
                [
                    "            (= (announced) 't')",
                    f"            (= (peek_ready {agent}) 't')",
                ]
            )
        lines.extend(
            [
                f"    (:action peek_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                *peek_preconditions,
                "        )",
                "        :effect (and",
                f"            (assign (peeked {agent}) (tails))",
                f"            (assign (event) 'peek_{agent}')",
                "        )",
                "    )",
                "",
                f"    (:action shout_tails_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                "            (= (tails) 't')",
                f"            (= (peeked {agent}) 't')",
                f"            (= (looking {agent}) 't')",
                "        )",
                "        :effect (and",
                "            (assign (announced) 't')",
                f"            (assign (event) 'shout_{agent}')",
                "        )",
                "    )",
                "",
            ]
        )

    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def render_coin_external(task: dict[str, Any]) -> str:
    agents = lower_agents(task)
    agent_set = ", ".join(f'"{agent}"' for agent in agents)
    return f"""import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "coin_in_the_box"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None
    agents = {{{agent_set}}}

    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME, handlers, logger_level=LOGGER_LEVEL)

    def _event_actor(self, state):
        event = state["event"]
        if not isinstance(event, str) or event == "none":
            return None
        return event.split("_", 1)[1]

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{{agent_index}}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{{agent_index}}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{{var_name}}] not found in functions")

        function = functions[var_name]
        schema_name = function.function_schema_name
        targets = function.entity_index_list
        event = state["event"]
        event_actor = self._event_actor(state)
        event_is_named = isinstance(event, str)

        if schema_name in {{"opened", "looking", "has_key"}}:
            return True

        if schema_name in {{"announced", "peek_ready"}}:
            return False

        if schema_name == "event":
            if not event_is_named or event == "none":
                return False
            if event.startswith("peek_") or event.startswith("shout_"):
                return agent_index == event_actor or state[f"looking {{agent_index}}"] == "t"
            return False

        if schema_name == "tails":
            if (
                event_is_named
                and event == f"peek_{{agent_index}}"
                and state[f"peeked {{agent_index}}"] == "t"
            ):
                return True
            if (
                event_is_named
                and event.startswith("shout_")
                and event_actor is not None
                and state[f"peeked {{event_actor}}"] == "t"
                and state[f"looking {{agent_index}}"] == "t"
            ):
                return True
            return False

        if schema_name == "peeked":
            if len(targets) != 1:
                raise ValueError("peeked function should have exactly one target", var_name)
            target = targets[0]
            if agent_index == target:
                return True
            if event_is_named and event == f"peek_{{target}}" and state[f"looking {{agent_index}}"] == "t":
                return True
            if event_is_named and event == f"shout_{{target}}" and state[f"looking {{agent_index}}"] == "t":
                return True
            return False

        raise ValueError(f"function_schemas_name [{{schema_name}}] not found")
"""


def coin_goal_true(query: str, truth: str) -> str:
    return f'        (= (@ep ("{query}") (= (tails) {truth})) ep.true)'


def coin_goal_not_true(query: str, truth: str) -> str:
    return f'        (!= (@ep ("{query}") (= (tails) {truth})) ep.true)'


def render_coin_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = lower_agents(task)
    labels = designated_labels(task)
    actual_tails = quoted_tf("tails" in labels)
    info_name = task["planning-task-info"]["problem"]

    goal_lines: list[str]
    if info_name == "cb-1":
        goal_lines = [coin_goal_true("+ b [a]", actual_tails)]
    elif info_name == "cb-2":
        goal_lines = [coin_goal_true("+ b [b]", actual_tails)]
    elif info_name == "cb-3":
        goal_lines = [coin_goal_true(f"+ b [{agent}]", actual_tails) for agent in agents]
        goal_lines.extend(
            coin_goal_true(f"+ b [{outer}] + b [{inner}]", actual_tails)
            for outer in agents
            for inner in agents
            if outer != inner
        )
    elif info_name == "cb-4":
        goal_lines = [
            coin_goal_true("+ b [b]", actual_tails),
            coin_goal_true("+ b [c]", actual_tails),
            coin_goal_not_true("+ b [b] + b [a] + b [c]", actual_tails),
            coin_goal_not_true("+ b [a] + b [c]", actual_tails),
        ]
    elif info_name == "cb-5":
        goal_lines = [
            coin_goal_true("+ b [b]", actual_tails),
            coin_goal_true("+ b [c]", actual_tails),
            coin_goal_true("+ b [c] + b [a]", actual_tails),
            coin_goal_true("+ b [a] + b [c]", actual_tails),
        ]
    else:
        raise ValueError(f"unsupported coin problem {info_name!r}")

    event_values = ["none"] + [f"peek_{agent}" for agent in agents] + [f"shout_{agent}" for agent in agents]

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain coin_in_the_box_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:agent_spec",
    ]

    for agent in agents:
        lines.append(f"        (= (nesting {agent}) 3)")

    lines.extend(
        [
            "    )",
            "",
            "    (:objects",
            "    )",
            "",
            "    (:init",
            f"        (assign (tails) {actual_tails})",
            f"        (assign (opened) {quoted_tf('opened' in labels)})",
            "        (assign (announced) 'f')",
            "        (assign (event) 'none')",
        ]
    )

    for agent in agents:
        lines.append(f"        (assign (looking {agent}) {quoted_tf(f'looking_{agent.upper()}' in labels)})")
    for agent in agents:
        lines.append(f"        (assign (has_key {agent}) {quoted_tf(f'has-key_{agent.upper()}' in labels)})")
    for agent in agents:
        lines.append(f"        (assign (peek_ready {agent}) 'f')")
    for agent in agents:
        lines.append(f"        (assign (peeked {agent}) 'f')")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (tails enumerate ['t','f'])",
            "        (opened enumerate ['t','f'])",
            "        (announced enumerate ['t','f'])",
            f"        (event enumerate [{','.join(repr(value) for value in event_values)}])",
            "        (looking enumerate ['t','f'])",
            "        (has_key enumerate ['t','f'])",
            "        (peek_ready enumerate ['t','f'])",
            "        (peeked enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_coin_in_the_box(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_coin_domain(task))
    (output_dir / "coin_in_the_box.py").write_text(render_coin_external(task))
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_coin_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "coin_in_the_box.py"],
    }


def cc_entities(task: dict[str, Any]) -> tuple[list[str], list[str], list[str]]:
    agents = lower_agents(task)
    boxes: set[str] = set()
    rooms: set[str] = set()
    for atom in task["language"]["atoms"]:
        if atom.startswith("at-box_"):
            _, box, room = atom.split("_", 2)
            boxes.add(fpddl_name(box))
            rooms.add(fpddl_name(room))
        elif atom.startswith("at-ag_"):
            _, agent, room = atom.split("_", 2)
            if fpddl_name(agent) not in agents:
                raise ValueError(f"unexpected agent atom {atom!r}")
            rooms.add(fpddl_name(room))
        elif atom.startswith("leftmost_") or atom.startswith("rightmost_"):
            _, room = atom.split("_", 1)
            rooms.add(fpddl_name(room))
    return sorted(agents), sorted(boxes), sorted(rooms)


def cc_initial_box_belief(room: str) -> str:
    # In the bundled CC family, common knowledge rules out room2 initially.
    return "no" if room == "room2" else "unknown"


def cc_closed_box_effects(state_fun: str, owner: str, box: str, rooms: list[str]) -> list[str]:
    # Box-location information is coupled across rooms: once an agent learns enough
    # to identify the box location, we close the whole room profile together.
    return [
        f"            (assign ({state_fun} {owner} {box} {room}) (actual {box} {room}))"
        for room in rooms
    ]


def cc_closed_meta_effects(observer: str, subject: str, box: str, rooms: list[str]) -> list[str]:
    return [
        f"            (assign (meta {observer} {subject} {box} {room}) (actual {box} {room}))"
        for room in rooms
    ]


def render_cc_domain(task: dict[str, Any]) -> str:
    agents, boxes, rooms = cc_entities(task)
    if len(agents) != 2 or len(boxes) != 2 or len(rooms) != 3:
        raise ValueError(
            "cc converter currently supports the 2-agent, 2-box, 3-room family, got "
            f"agents={agents}, boxes={boxes}, rooms={rooms}"
        )

    room_index = {room: idx + 1 for idx, room in enumerate(rooms)}

    lines: list[str] = [
        "(define",
        "    (domain collaboration_through_communication_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "        box",
        "        room",
        "    )",
        "",
        "    (:functions",
        "        (agent_loc ?a - agent)",
        "        (actual ?b - box ?r - room)",
        "        (known ?a - agent ?b - box ?r - room)",
        "        (communicated ?s - agent ?l - agent ?b - box ?r - room)",
        "    )",
        "",
    ]

    for agent in agents:
        lines.extend(
            [
                f"    (:action left_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                f"            (> (agent_loc {agent}) {room_index[rooms[0]]})",
                "        )",
                "        :effect (and",
                f"            (decrease (agent_loc {agent}) 1)",
                "        )",
                "    )",
                "",
                f"    (:action right_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                f"            (< (agent_loc {agent}) {room_index[rooms[-1]]})",
                "        )",
                "        :effect (and",
                f"            (increase (agent_loc {agent}) 1)",
                "        )",
                "    )",
                "",
            ]
        )

    for agent in agents:
        for box in boxes:
            for room in rooms:
                effect_lines: list[str] = []
                if room != "room2":
                    effect_lines.extend(cc_closed_box_effects("known", agent, box, rooms))
                else:
                    effect_lines.append(
                        f"            (assign (known {agent} {box} {room}) (actual {box} {room}))"
                    )

                lines.extend(
                    [
                        f"    (:action sense_{agent}_{box}_{room}",
                        "        :parameters ()",
                        "        :precondition (and",
                        f"            (= (agent_loc {agent}) {room_index[room]})",
                        "        )",
                        "        :effect (and",
                        *effect_lines,
                        "        )",
                        "    )",
                        "",
                    ]
                )

    for speaker in agents:
        listener = next(agent for agent in agents if agent != speaker)
        for box in boxes:
            for room in rooms:
                effect_lines = [
                    *cc_closed_box_effects("known", listener, box, rooms),
                    f"            (assign (communicated {speaker} {listener} {box} {room}) 'yes')",
                    f"            (assign (communicated {listener} {speaker} {box} {room}) 'yes')",
                ]

                for shared_room in rooms:
                    lines.extend(
                        [
                            f"    (:action tell_{speaker}_{box}_{room}_from_{shared_room}",
                            "        :parameters ()",
                            "        :precondition (and",
                            f"            (= (known {speaker} {box} {room}) 'yes')",
                            f"            (= (actual {box} {room}) 'yes')",
                            f"            (= (agent_loc {speaker}) {room_index[shared_room]})",
                            f"            (= (agent_loc {listener}) {room_index[shared_room]})",
                            "        )",
                            "        :effect (and",
                            *effect_lines,
                            "        )",
                            "    )",
                            "",
                        ]
                    )

    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def render_cc_external(task: dict[str, Any]) -> str:
    agents, boxes, rooms = cc_entities(task)
    rooms_expr = ", ".join(repr(room) for room in rooms)
    return f"""import typing

from util import Entity, EntityType, Function, FunctionSchema, Type


class ExternalFunction:
    rooms = [{rooms_expr}]

    def __init__(self, handlers):
        self.handlers = handlers

    def _known_value(self, state, agent, box, room):
        value = state.get(f"known {{agent}} {{box}} {{room}}", "unknown")
        return value if value in {{"yes", "no", "unknown"}} else "unknown"

    def _is_communicated(self, state, observer, subject, box):
        for room in self.rooms:
            value = state.get(f"communicated {{observer}} {{subject}} {{box}} {{room}}", "no")
            if value == "yes":
                return True
        return False

    def _can_infer_actual(self, state, agent, box, room):
        known_values = {{
            known_room: self._known_value(state, agent, box, known_room)
            for known_room in self.rooms
        }}
        if known_values[room] != "unknown":
            return True
        no_rooms = [known_room for known_room, value in known_values.items() if value == "no"]
        yes_rooms = [known_room for known_room, value in known_values.items() if value == "yes"]
        if yes_rooms:
            return room in yes_rooms
        if len(no_rooms) == len(self.rooms) - 1:
            remaining = next(
                known_room for known_room in self.rooms if known_room not in no_rooms
            )
            return room == remaining
        return False

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{{agent_index}}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{{agent_index}}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{{var_name}}] not found in functions")
        function = functions[var_name]
        schema_name = function.function_schema_name
        targets = function.entity_index_list

        if schema_name == "agent_loc":
            return True
        if schema_name == "actual":
            if len(targets) != 2:
                raise ValueError("actual function should have exactly two targets", var_name)
            box, room = targets
            return self._can_infer_actual(state, agent_index, box, room)
        if schema_name == "known":
            if len(targets) != 3:
                raise ValueError("known function should have exactly three targets", var_name)
            subject, box, _room = targets
            if agent_index == subject:
                return True
            return self._is_communicated(state, agent_index, subject, box)
        if schema_name == "communicated":
            if len(targets) != 4:
                raise ValueError("communicated function should have exactly four targets", var_name)
            speaker, listener, _box, _room = targets
            return agent_index in {{speaker, listener}}
        return True
"""


def cc_ep_true(query: str, condition: str) -> str:
    return f'        (= (@ep ("{query}") {condition}) ep.true)'


def cc_ep_not_true(query: str, condition: str) -> str:
    return f'        (!= (@ep ("{query}") {condition}) ep.true)'


def render_cc_problem(task: dict[str, Any], problem_name: str) -> str:
    agents, boxes, rooms = cc_entities(task)
    if agents != ["a", "b"] or boxes != ["box1", "box2"] or rooms != ["room1", "room2", "room3"]:
        raise ValueError(
            "cc converter currently expects agents [a,b], boxes [box1,box2], rooms [room1,room2,room3], "
            f"got agents={agents}, boxes={boxes}, rooms={rooms}"
        )

    room_index = {room: idx + 1 for idx, room in enumerate(rooms)}
    labels = designated_labels(task)
    info_name = task["planning-task-info"]["problem"]

    box1_room1 = "(= (actual box1 room1) 'yes')"
    box2_room3 = "(= (actual box2 room3) 'yes')"
    a_room2 = f"(= (agent_loc a) {room_index['room2']})"
    a_room3 = f"(= (agent_loc a) {room_index['room3']})"

    goal_lines: list[str]
    if info_name == "cc_2_2_3-1":
        goal_lines = [
            cc_ep_true("+ b [a]", box1_room1),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [a] + b [b]", box1_room1),
            cc_ep_true("+ b [b] + b [a]", box1_room1),
        ]
    elif info_name == "cc_2_2_3-2":
        goal_lines = [
            cc_ep_true("+ b [a]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
        ]
    elif info_name == "cc_2_2_3-3":
        goal_lines = [
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_true("+ b [a] + b [b]", box2_room3),
            cc_ep_true("+ b [b] + b [a]", box2_room3),
            cc_ep_true("+ b [a]", a_room3),
            cc_ep_true("+ b [b]", a_room3),
        ]
    elif info_name == "cc_2_2_3-4":
        goal_lines = [
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_true("+ b [a] + b [b]", box2_room3),
            cc_ep_true("+ b [b] + b [a]", box2_room3),
            cc_ep_true("+ b [a]", a_room2),
            cc_ep_true("+ b [b]", a_room2),
        ]
    elif info_name == "cc_2_2_3-5":
        goal_lines = [
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_not_true("+ b [a] + b [b]", box2_room3),
            cc_ep_true("+ b [a]", a_room3),
            cc_ep_true("+ b [b]", a_room3),
        ]
    elif info_name == "cc_2_2_3-6":
        goal_lines = [
            cc_ep_true("+ b [a]", box1_room1),
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_not_true("+ b [a] + b [b]", box1_room1),
            cc_ep_not_true("+ b [a] + b [b]", box2_room3),
            cc_ep_not_true("+ b [b] + b [a]", box1_room1),
            cc_ep_not_true("+ b [b] + b [a]", box2_room3),
            cc_ep_true("+ b [a]", a_room3),
            cc_ep_true("+ b [b]", a_room3),
        ]
    else:
        raise ValueError(f"unsupported cc problem {info_name!r}")

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain collaboration_through_communication_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:agent_spec",
    ]

    for agent in agents:
        lines.append(f"        (= (nesting {agent}) 3)")

    lines.extend(
        [
            "    )",
        "",
        "    (:objects",
        f"        {' '.join(boxes)} - box",
        f"        {' '.join(rooms)} - room",
        "    )",
        "",
        "    (:init",
        ]
    )

    for agent in agents:
        actual_room = next(room for room in rooms if f"at-ag_{agent.upper()}_{room}" in labels)
        lines.append(f"        (assign (agent_loc {agent}) {room_index[actual_room]})")
    lines.append("")

    for box in boxes:
        for room in rooms:
            actual = "yes" if f"at-box_{box}_{room}" in labels else "no"
            lines.append(f"        (assign (actual {box} {room}) '{actual}')")
    lines.append("")

    for agent in agents:
        for box in boxes:
            for room in rooms:
                initial = cc_initial_box_belief(room)
                lines.append(f"        (assign (known {agent} {box} {room}) '{initial}')")
    lines.append("")

    for speaker in agents:
        for listener in agents:
            if speaker == listener:
                continue
            for box in boxes:
                for room in rooms:
                    lines.append(
                        f"        (assign (communicated {speaker} {listener} {box} {room}) 'no')"
                    )

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (agent_loc integer [1,3])",
            "        (actual enumerate ['yes','no'])",
            "        (known enumerate ['yes','no','unknown'])",
            "        (communicated enumerate ['yes','no'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_collaboration_through_communication(
    task: dict[str, Any], output_dir: Path, problem_name: str
) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_cc_domain(task))
    (output_dir / "collaboration_through_communication.py").write_text(render_cc_external(task))
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_cc_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "collaboration_through_communication.py"],
    }


def unique_suffixes(task: dict[str, Any], prefix: str) -> list[str]:
    suffixes = {
        suffix
        for atom in task["language"]["atoms"]
        if (suffix := atom_suffix(atom, prefix)) is not None
    }
    return sorted(suffixes)


def sc_room_index(room: str) -> int:
    match = re.search(r"(\d+)$", room)
    if not match:
        raise ValueError(f"Selective-Communication room name has no numeric suffix: {room!r}")
    return int(match.group(1))


def render_selective_communication_domain(task: dict[str, Any]) -> str:
    agents = list(task["language"]["agents"])
    rooms = unique_suffixes(task, "leftmost_") + unique_suffixes(task, "rightmost_")
    rooms.extend(
        suffix.rsplit("_", 1)[0]
        for suffix in unique_suffixes(task, "neighbor_")
    )
    rooms.extend(
        suffix.rsplit("_", 1)[1]
        for suffix in unique_suffixes(task, "neighbor_")
    )
    room_numbers = sorted({sc_room_index(room) for room in rooms})
    if not room_numbers:
        raise ValueError("Selective-Communication converter found no rooms")
    min_room = min(room_numbers)
    max_room = max(room_numbers)
    meeting_room = room_numbers[1] if len(room_numbers) > 1 else min_room

    action_lines: list[str] = []
    for action_name in sorted(task["actions"]):
        parts = action_name.split("_", 1)
        if len(parts) != 2:
            continue
        kind, agent = parts
        if kind == "left":
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (> (agent_loc {agent}) {min_room})",
                    "        )",
                    "        :effect (and",
                    f"            (decrease (agent_loc {agent}) 1)",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif kind == "right":
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (< (agent_loc {agent}) {max_room})",
                    "        )",
                    "        :effect (and",
                    f"            (increase (agent_loc {agent}) 1)",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif kind == "sense":
            meeting_preconditions = [
                f"            (= (agent_loc {other}) {meeting_room})"
                for other in agents
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    "            (= (info) 't')",
                    *meeting_preconditions,
                    "        )",
                    "        :effect (and",
                    f"            (assign (knows_info {agent}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif kind == "tell":
            preconditions = [
                f"            (= (knows_info {agent}) 't')",
                *[
                    f"            (= (agent_loc {other}) {meeting_room})"
                    for other in agents
                ],
            ]
            effects = [f"            (assign (knows_info {other}) 't')" for other in agents]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    *preconditions,
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )

    lines = [
        "(define",
        "    (domain selective_communication_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (agent_loc ?a - agent)",
        "        (info)",
        "        (knows_info ?a - agent)",
        "    )",
        "",
        *action_lines,
        ")",
        "",
    ]
    return "\n".join(lines)


def render_selective_communication_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    labels = designated_labels(task)
    room_numbers = [
        sc_room_index(atom.split("_", 2)[2])
        for atom in task["language"]["atoms"]
        if atom.startswith("at_")
    ]
    min_room = min(room_numbers)
    max_room = max(room_numbers)
    goal_lines = [f"        (= (knows_info {agent}) 't')" for agent in agents]

    lines = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain selective_communication_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
    ]
    for agent in agents:
        room = next(
            atom.split("_", 2)[2]
            for atom in labels
            if atom.startswith(f"at_{agent}_")
        )
        lines.append(f"        (assign (agent_loc {agent}) {sc_room_index(room)})")
    lines.append(f"        (assign (info) {quoted_tf('info' in labels)})")
    for agent in agents:
        lines.append(f"        (assign (knows_info {agent}) 'f')")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            f"        (agent_loc integer [{min_room},{max_room}])",
            "        (info enumerate ['t','f'])",
            "        (knows_info enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_selective_communication(
    task: dict[str, Any], output_dir: Path, problem_name: str
) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_selective_communication_domain(task))
    (output_dir / "selective_communication.py").write_text(
        render_all_visible_external("selective_communication_from_epddl")
    )
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_selective_communication_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "selective_communication.py"],
    }


def cloud_tasks(task: dict[str, Any]) -> list[str]:
    tasks = unique_suffixes(task, "submitted_")
    if not tasks:
        raise ValueError("Cloud-Scheduling converter found no tasks")
    return tasks


def cloud_owner_pairs(task: dict[str, Any]) -> list[tuple[str, str]]:
    pairs: list[tuple[str, str]] = []
    for atom in task["language"]["atoms"]:
        suffix = atom_suffix(atom, "owner_")
        if suffix is None:
            continue
        task_name, owner = suffix.rsplit("_", 1)
        pairs.append((task_name, owner))
    return sorted(pairs)


def render_cloud_scheduling_domain(task: dict[str, Any]) -> str:
    tasks = cloud_tasks(task)
    agents = list(task["language"]["agents"])
    host_agents = [agent for agent in ("scheduler", "observer", "reporter") if agent in agents]
    physical_prefixes = [
        "submitted",
        "size-large",
        "scheduled",
        "executing",
        "completed",
        "failed",
        "rescheduled",
        "validated",
    ]
    owner_pairs = cloud_owner_pairs(task)

    action_lines: list[str] = []
    for action_name in sorted(task["actions"]):
        if "_" not in action_name:
            continue
        prefix, suffix = action_name.split("_", 1)
        if prefix == "sense-workload":
            t = suffix
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (submitted {t}) 't')",
                    f"            (= (known_size {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (known_size {t}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "schedule-task":
            t = suffix
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (submitted {t}) 't')",
                    f"            (= (known_size {t}) 't')",
                    f"            (= (scheduled {t}) 'f')",
                    f"            (= (executing {t}) 'f')",
                    f"            (= (completed {t}) 'f')",
                    f"            (= (failed {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (scheduled {t}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "start-execution":
            t = suffix
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (scheduled {t}) 't')",
                    f"            (= (executing {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (executing {t}) 't')",
                    f"            (assign (scheduled {t}) 'f')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "observe-completion":
            t = suffix
            effects = [
                f"            (assign (completed {t}) 't')",
                f"            (assign (executing {t}) 'f')",
                *[
                    f"            (assign (known_completed {agent} {t}) 't')"
                    for agent in host_agents
                ],
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (executing {t}) 't')",
                    f"            (= (failed {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "observe-failure":
            t = suffix
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (executing {t}) 't')",
                    f"            (= (completed {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (failed {t}) 't')",
                    f"            (assign (executing {t}) 'f')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "reschedule-task":
            t = suffix
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (failed {t}) 't')",
                    f"            (= (rescheduled {t}) 'f')",
                    f"            (= (completed {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (scheduled {t}) 't')",
                    f"            (assign (rescheduled {t}) 't')",
                    f"            (assign (failed {t}) 'f')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "validate-completion":
            t = suffix
            effects = [
                f"            (assign (validated {t}) 't')",
                *[
                    f"            (assign (known_completed {agent} {t}) 't')"
                    for agent in host_agents
                ],
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (completed {t}) 't')",
                    f"            (= (validated {t}) 'f')",
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif prefix == "report-to-tenant":
            t, tenant = suffix.rsplit("_", 1)
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (validated {t}) 't')",
                    f"            (= (owner {t} {tenant}) 't')",
                    "        )",
                    "        :effect (and",
                    f"            (assign (known_completed {tenant} {t}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    lines = [
        "(define",
        "    (domain cloud_scheduling_from_epddl)",
        "",
        "    (:types",
        "        agent task",
        "    )",
        "",
        "    (:functions",
        *[f"        ({name} ?t - task)" for name in physical_prefixes],
        "        (owner ?t - task ?a - agent)",
        "        (known_size ?t - task)",
        "        (known_completed ?a - agent ?t - task)",
        "    )",
        "",
        *action_lines,
        ")",
        "",
    ]
    return "\n".join(lines)


def cloud_goal_lines(formula: Any) -> list[str]:
    if isinstance(formula, str):
        if formula == "true":
            return []
        if formula == "false":
            raise ValueError("Cloud-Scheduling converter cannot encode false goal")
        suffix = atom_suffix(formula, "completed_")
        if suffix is not None:
            return [f"        (= (completed {suffix}) 't')"]
        suffix = atom_suffix(formula, "validated_")
        if suffix is not None:
            return [f"        (= (validated {suffix}) 't')"]
        raise ValueError(f"unsupported Cloud-Scheduling goal atom {formula!r}")
    connective = formula.get("connective")
    if connective == "and":
        lines: list[str] = []
        for item in formula["formulas"]:
            lines.extend(cloud_goal_lines(item))
        return lines
    if connective == "not":
        inner = formula["formula"]
        if isinstance(inner, dict) and inner.get("modality-name") == "box":
            agent = inner["modality-index"][0]
            atom = inner["formula"]
            suffix = atom_suffix(atom, "completed_")
            if suffix is not None:
                return [f"        (= (known_completed {agent} {suffix}) 'f')"]
        if isinstance(inner, str):
            suffix = atom_suffix(inner, "completed_")
            if suffix is not None:
                return [f"        (= (completed {suffix}) 'f')"]
        raise ValueError(f"unsupported negated Cloud-Scheduling goal {formula!r}")
    if formula.get("modality-name") == "box":
        agent = formula["modality-index"][0]
        atom = formula["formula"]
        suffix = atom_suffix(atom, "completed_")
        if suffix is not None:
            return [f"        (= (known_completed {agent} {suffix}) 't')"]
        suffix = atom_suffix(atom, "validated_")
        if suffix is not None:
            return [f"        (= (validated {suffix}) 't')"]
    raise ValueError(f"unsupported Cloud-Scheduling goal formula {formula!r}")


def render_cloud_scheduling_problem(task: dict[str, Any], problem_name: str) -> str:
    tasks = cloud_tasks(task)
    agents = list(task["language"]["agents"])
    labels = designated_labels(task)
    physical_prefixes = [
        "submitted",
        "size-large",
        "scheduled",
        "executing",
        "completed",
        "failed",
        "rescheduled",
        "validated",
    ]
    owner_pairs = cloud_owner_pairs(task)
    goal_lines = cloud_goal_lines(task["goal"]["formula"])

    lines = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain cloud_scheduling_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:objects",
        f"        {' '.join(tasks)} - task",
        "    )",
        "",
        "    (:init",
    ]
    for prefix in physical_prefixes:
        atom_prefix = f"{prefix}_"
        for task_name in tasks:
            atom = f"{atom_prefix}{task_name}"
            lines.append(f"        (assign ({prefix} {task_name}) {quoted_tf(atom in labels)})")
    for task_name, owner in owner_pairs:
        atom = f"owner_{task_name}_{owner}"
        lines.append(f"        (assign (owner {task_name} {owner}) {quoted_tf(atom in labels)})")
    for task_name in tasks:
        lines.append(f"        (assign (known_size {task_name}) 'f')")
    for agent in agents:
        for task_name in tasks:
            lines.append(f"        (assign (known_completed {agent} {task_name}) 'f')")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            *[f"        ({prefix} enumerate ['t','f'])" for prefix in physical_prefixes],
            "        (owner enumerate ['t','f'])",
            "        (known_size enumerate ['t','f'])",
            "        (known_completed enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_cloud_scheduling(
    task: dict[str, Any], output_dir: Path, problem_name: str
) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_cloud_scheduling_domain(task))
    (output_dir / "cloud_scheduling.py").write_text(
        render_all_visible_external("cloud_scheduling_from_epddl")
    )
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_cloud_scheduling_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "cloud_scheduling.py"],
    }


def sar_locations(task: dict[str, Any]) -> list[str]:
    locations = {
        suffix
        for prefix in ("fire-at_", "victim-at_")
        for suffix in unique_suffixes(task, prefix)
    }
    for atom in task["language"]["atoms"]:
        suffix = atom_suffix(atom, "adjacent_")
        if suffix is None:
            continue
        left, right = suffix.rsplit("_", 1)
        locations.add(left)
        locations.add(right)
    if not locations:
        raise ValueError("Search-and-Rescue converter found no locations")
    return sorted(locations)


def sar_location_index(locations: list[str]) -> dict[str, int]:
    return {location: index for index, location in enumerate(locations)}


def sar_action_agent_location(action_name: str, prefix: str) -> tuple[str, str]:
    suffix = action_name[len(prefix) :]
    agent, location = suffix.rsplit("_", 1)
    return agent, location


def render_sar_domain(task: dict[str, Any]) -> str:
    agents = list(task["language"]["agents"])
    locations = sar_locations(task)
    loc_index = sar_location_index(locations)
    labels = designated_labels(task)
    action_lines: list[str] = []

    for action_name in sorted(task["actions"]):
        if action_name.startswith("move_"):
            suffix = action_name[len("move_") :]
            agent, from_loc, to_loc = suffix.split("_", 2)
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (agent_loc {agent}) {loc_index[from_loc]})",
                    "        )",
                    "        :effect (and",
                    f"            (assign (agent_loc {agent}) {loc_index[to_loc]})",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif action_name.startswith("sense-victim_"):
            agent, location = sar_action_agent_location(action_name, "sense-victim_")
            actual = "known_victim" if f"victim-at_{location}" in labels else "known_no_victim"
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (agent_loc {agent}) {loc_index[location]})",
                    "        )",
                    "        :effect (and",
                    f"            (assign ({actual} {agent} {location}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif action_name.startswith("sense-fire_"):
            agent, location = sar_action_agent_location(action_name, "sense-fire_")
            actual = "known_fire" if f"fire-at_{location}" in labels else "known_no_fire"
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (agent_loc {agent}) {loc_index[location]})",
                    "        )",
                    "        :effect (and",
                    f"            (assign ({actual} {agent} {location}) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif action_name.startswith("announce-victim_"):
            prefix = "announce-victim_"
            agent, location = sar_action_agent_location(action_name, prefix)
            effects = [
                f"            (assign (known_victim {other} {location}) 't')"
                for other in agents
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (known_victim {agent} {location}) 't')",
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif action_name.startswith("local-announce-victim_"):
            continue
        elif action_name.startswith("public-announce-fire_"):
            prefix = "public-announce-fire_"
            agent, location = sar_action_agent_location(action_name, prefix)
            effects = [
                f"            (assign (known_fire {other} {location}) 't')"
                for other in agents
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (known_fire {agent} {location}) 't')",
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif action_name.startswith("local-announce-fire_") or action_name.startswith("private-announce-fire_"):
            continue
        elif action_name.startswith("publicly-extinguish-fire_"):
            prefix = "publicly-extinguish-fire_"
            agent, location = sar_action_agent_location(action_name, prefix)
            effects = [
                f"            (assign (fire {location}) 'f')",
                *[
                    f"            (assign (known_no_fire {other} {location}) 't')"
                    for other in agents
                ],
            ]
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (agent_loc {agent}) {loc_index[location]})",
                    f"            (= (fire {location}) 't')",
                    f"            (= (known_fire {agent} {location}) 't')",
                    "        )",
                    "        :effect (and",
                    *effects,
                    "        )",
                    "    )",
                    "",
                ]
            )
        elif action_name.startswith("privately-extinguish-fire_"):
            continue
        elif action_name.startswith("rescue-victim_"):
            agent, location = sar_action_agent_location(action_name, "rescue-victim_")
            action_lines.extend(
                [
                    f"    (:action {action_name}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (agent_loc {agent}) {loc_index[location]})",
                    f"            (= (victim {location}) 't')",
                    f"            (= (fire {location}) 'f')",
                    f"            (= (known_victim {agent} {location}) 't')",
                    f"            (= (known_no_fire {agent} {location}) 't')",
                    "        )",
                    "        :effect (and",
                    "            (assign (rescued) 't')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    lines = [
        "(define",
        "    (domain search_and_rescue_from_epddl)",
        "",
        "    (:types",
        "        agent location",
        "    )",
        "",
        "    (:functions",
        "        (agent_loc ?a - agent)",
        "        (fire ?l - location)",
        "        (victim ?l - location)",
        "        (rescued)",
        "        (known_fire ?a - agent ?l - location)",
        "        (known_no_fire ?a - agent ?l - location)",
        "        (known_victim ?a - agent ?l - location)",
        "        (known_no_victim ?a - agent ?l - location)",
        "    )",
        "",
        *action_lines,
        ")",
        "",
    ]
    return "\n".join(lines)


def render_sar_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    locations = sar_locations(task)
    loc_index = sar_location_index(locations)
    labels = designated_labels(task)
    goal_lines = ["        (= (rescued) 't')"]

    lines = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain search_and_rescue_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:objects",
        f"        {' '.join(locations)} - location",
        "    )",
        "",
        "    (:init",
    ]
    for agent in agents:
        location = next(
            atom.split("_", 2)[2]
            for atom in labels
            if atom.startswith(f"at_{agent}_")
        )
        lines.append(f"        (assign (agent_loc {agent}) {loc_index[location]})")
    for location in locations:
        lines.append(f"        (assign (fire {location}) {quoted_tf(f'fire-at_{location}' in labels)})")
        lines.append(f"        (assign (victim {location}) {quoted_tf(f'victim-at_{location}' in labels)})")
    lines.append(f"        (assign (rescued) {quoted_tf('rescued-victim' in labels)})")
    for agent in agents:
        for location in locations:
            lines.append(f"        (assign (known_fire {agent} {location}) 'f')")
            lines.append(f"        (assign (known_no_fire {agent} {location}) 'f')")
            lines.append(f"        (assign (known_victim {agent} {location}) 'f')")
            lines.append(f"        (assign (known_no_victim {agent} {location}) 'f')")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            f"        (agent_loc integer [0,{len(locations) - 1}])",
            "        (fire enumerate ['t','f'])",
            "        (victim enumerate ['t','f'])",
            "        (rescued enumerate ['t','f'])",
            "        (known_fire enumerate ['t','f'])",
            "        (known_no_fire enumerate ['t','f'])",
            "        (known_victim enumerate ['t','f'])",
            "        (known_no_victim enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_search_and_rescue(
    task: dict[str, Any], output_dir: Path, problem_name: str
) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_sar_domain(task))
    (output_dir / "search_and_rescue.py").write_text(
        render_all_visible_external("search_and_rescue_from_epddl")
    )
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_sar_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "search_and_rescue.py"],
    }


CONVERTERS = {
    "blocks-world": convert_blocks_world,
    "cloud-scheduling": convert_cloud_scheduling,
    "consecutive-numbers": convert_consecutive_numbers,
    "grapevine": convert_grapevine,
    "gossip": convert_gossip,
    "active-muddy-child": convert_active_muddy_child,
    "coin-in-the-box": convert_coin_in_the_box,
    "collaboration-through-communication": convert_collaboration_through_communication,
    "search-and-rescue": convert_search_and_rescue,
    "selective-communication": convert_selective_communication,
}
