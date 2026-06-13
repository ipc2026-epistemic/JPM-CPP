from __future__ import annotations

import json
import re
import shutil
from dataclasses import dataclass
from pathlib import Path
from typing import Any


JPM_ROOT = Path(__file__).resolve().parents[2]
IEPC_ROOT = JPM_ROOT.parent
PLANK_ROOT = IEPC_ROOT / "plank"
PLANK_BUILD = PLANK_ROOT / "build"
PLANK_BINARY = PLANK_BUILD / "plank"
CONVERTED_ROOT = JPM_ROOT / "converted_from_epddl"


def fpddl_name(name: str) -> str:
    value = re.sub(r"[^A-Za-z0-9_]", "_", name).lower()
    if not value:
        raise ValueError(f"cannot convert empty name {name!r}")
    return value


def atom_suffix(atom: str, prefix: str) -> str | None:
    if atom.startswith(prefix):
        return atom[len(prefix) :]
    return None


def quoted_tf(value: bool) -> str:
    return "'t'" if value else "'f'"


def load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def designated_world(task: dict[str, Any]) -> str:
    designated = task["initial-state"].get("designated", [])
    if len(designated) != 1:
        raise ValueError(
            "expected exactly one designated world, got "
            f"{designated!r} for {task.get('planning-task-info', {})!r}"
        )
    return designated[0]


def designated_labels(task: dict[str, Any]) -> set[str]:
    world = designated_world(task)
    return set(task["initial-state"]["labels"][world])


def copy_tree_file(src: Path, dst: Path) -> None:
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


@dataclass(frozen=True)
class DomainSpec:
    source_dir: str
    library_file: str | None
    support_level: str
    notes: str
    target_dir: str
    converter_name: str | None = None


DOMAIN_NAME_RE = re.compile(r"\(define\s+\(domain\s+([^)]+)\)", re.IGNORECASE)

TIGER_LEFT_BLOCK = """    ;--------------------LEFT------------------

    (:event e-left
        :precondition
            (not
                (exists (?room-from - room)
                    (and (at-knight ?room-from) (leftmost ?room-from)) ))
        :effects
            (:forall (?room-from - (either room room))
                (when (at-knight ?room-from)
                    (:and
                        (not (at-knight ?room-from))
                        (:forall (?room-to - room | (neighbor ?room-to ?room-from))
                            (at-knight ?room-to) ))))
    )

    (:action left
        :parameters ()
        :action-type (public-ontic (e-left))
        :observability-conditions (Knight Fully)
    )

"""

TIGER_LEFT_NORMALIZED = """    ;--------------------LEFT------------------

    (:event e-left
        :parameters (?room-from ?room-to - room)
        :precondition (and (at-knight ?room-from) (neighbor ?room-to ?room-from))
        :effects (:and
            (not (at-knight ?room-from))
            (at-knight ?room-to)
        )
    )

    (:action left
        :parameters (?room-from ?room-to - room)
        :action-type (public-ontic (e-left ?room-from ?room-to))
        :observability-conditions (Knight Fully)
    )

"""

TIGER_RIGHT_BLOCK = """    ;--------------------RIGHT------------------

    (:event e-right
        :precondition
            (not
                (exists (?room-from - room)
                    (and (at-knight ?room-from) (rightmost ?room-from)) ))
        :effects
            (:forall (?room-from - room)
                (when (at-knight ?room-from)
                    (:and
                        (not (at-knight ?room-from))
                        (:forall (?room-to - room | (neighbor ?room-from ?room-to))
                            (at-knight ?room-to) ))))
    )

    (:action right
        :parameters ()
        :action-type (public-ontic (e-right))
        :observability-conditions (Knight Fully)
    )

"""

TIGER_RIGHT_NORMALIZED = """    ;--------------------RIGHT------------------

    (:event e-right
        :parameters (?room-from ?room-to - room)
        :precondition (and (at-knight ?room-from) (neighbor ?room-from ?room-to))
        :effects (:and
            (not (at-knight ?room-from))
            (at-knight ?room-to)
        )
    )

    (:action right
        :parameters (?room-from ?room-to - room)
        :action-type (public-ontic (e-right ?room-from ?room-to))
        :observability-conditions (Knight Fully)
    )

"""


def epddl_domain_name(domain_path: Path) -> str | None:
    match = DOMAIN_NAME_RE.search(domain_path.read_text())
    if match is None:
        return None
    return match.group(1).strip().lower()


def inject_problem_agents(problem_text: str, agents_clause: str) -> str:
    if "(:agents" in problem_text:
        return problem_text
    marker = "    (:objects\n"
    if marker in problem_text:
        return problem_text.replace(marker, f"{agents_clause}\n{marker}", 1)
    return problem_text


def normalize_tiger_domain(domain_text: str) -> str:
    text = domain_text.replace(
        "    (:constants\n        Knight - agent\n    )\n\n",
        "",
    )
    text = text.replace(TIGER_LEFT_BLOCK, TIGER_LEFT_NORMALIZED)
    text = text.replace(TIGER_RIGHT_BLOCK, TIGER_RIGHT_NORMALIZED)
    return text


def remove_agent_constant(domain_text: str, agent_name: str) -> str:
    pattern = re.compile(
        r"\n\s*\(:constants\s+" + re.escape(agent_name) + r"\s*-\s*agent\s*\)\s*\n",
        re.IGNORECASE,
    )
    return pattern.sub("\n", domain_text, count=1)


def sanitize_epddl_inputs(
    domain_path: Path,
    problem_path: Path,
    libraries: list[Path],
    scratch_dir: Path,
) -> tuple[Path, Path, list[Path]]:
    domain_name = epddl_domain_name(domain_path)
    if domain_name is None:
        return domain_path, problem_path, libraries

    domain_text = domain_path.read_text()
    problem_text = problem_path.read_text()
    sanitized_domain = domain_text
    sanitized_problem = problem_text

    if domain_name == "blocks-world":
        sanitized_domain = remove_agent_constant(sanitized_domain, "Robot")
        sanitized_problem = inject_problem_agents(sanitized_problem, "    (:agents Robot)\n")
    elif domain_name == "tiger":
        sanitized_domain = normalize_tiger_domain(sanitized_domain)
        sanitized_problem = inject_problem_agents(sanitized_problem, "    (:agents Knight)\n")

    if sanitized_domain == domain_text and sanitized_problem == problem_text:
        return domain_path, problem_path, libraries

    scratch_dir.mkdir(parents=True, exist_ok=True)
    sanitized_domain_path = scratch_dir / domain_path.name
    sanitized_problem_path = scratch_dir / problem_path.name
    sanitized_domain_path.write_text(sanitized_domain)
    sanitized_problem_path.write_text(sanitized_problem)
    return sanitized_domain_path, sanitized_problem_path, libraries
