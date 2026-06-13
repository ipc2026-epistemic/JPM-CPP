# EPDDL to F-PDDL Pipeline

This document summarizes the practical difference between the EPDDL benchmarks used by `plank` and the F-PDDL representation used by JPM, then records the pipeline we use to make EPDDL instances solvable through the JPM F-PDDL stack.

For paper-writing material, see [Extended Abstract Draft](EXTENDED_ABSTRACT.md).

## Short Version

EPDDL is the source representation. It describes epistemic planning domains directly: agents, events, observability, private/public/sensing action types, and modal formulas over possible worlds.

F-PDDL is the execution representation for JPM. It describes a finite forward-search task: functions with finite ranges, grounded actions that assign new values, external visibility helpers, and goals that JPM can evaluate during search.

The conversion is therefore not just a file-format rewrite. In most domains we compile an EPDDL task into a domain-specific F-PDDL model, solve that model with JPM, translate the JPM plan back into EPDDL action names, and validate the translated plan in `plank`.

## Representation Differences

| Area | EPDDL | F-PDDL / JPM |
| --- | --- | --- |
| Main purpose | Model epistemic planning problems in DEL-style terms. | Run finite forward search in the JPM planner. |
| Typical files | `plank/benchmarks/domains/<Domain>/*.epddl` and instance `.epddl` files. | `converted_from_epddl/<domain>/domain.pddl`, generated problem `.pddl`, optional Python external model, and optional `visibility.json`. |
| State model | Epistemic state, usually a Kripke-style structure with worlds, accessibility, and designated worlds. | Concrete finite variables such as `(opened)`, `(looking a)`, `(belief_state)`, and `(goal_reached)`. |
| Actions | Action schemas plus DEL event/action-type definitions such as public ontic, private ontic, sensing, and announcements. | Grounded forward actions with preconditions and assignments. |
| Observability | Declared inside EPDDL actions with `:observability-conditions` and action-type libraries. | Implemented through JPM visibility behavior, generated state variables, and optional external Python helpers. |
| Knowledge | Native modal syntax such as `[?i]`, group modalities, and nested epistemic formulas. | JPM formulas, often using `@ep`, plus finite state variables that encode what the solver needs to know. |
| Grounding | `plank export` can produce grounded JSON for many EPDDL families. | Converter-generated PDDL is already shaped for JPM parsing and finite search. |
| Validation | `plank validate` is the authoritative check against original EPDDL semantics. | JPM proves only that the converted F-PDDL task is solvable. We still validate translated plans in `plank` when possible. |

The important consequence is semantic: EPDDL actions update epistemic models, while F-PDDL actions update finite variables. If the F-PDDL variables do not preserve the EPDDL action meaning for the target domain, a JPM plan can be syntactically valid but fail when translated back to EPDDL.

## Why the Conversion Is Domain-Specific

There is no fully generic `EPDDL -> F-PDDL` translation in this codebase yet. The current bridge uses domain-specific converters because EPDDL features do not map one-to-one onto JPM features.

The converter has to decide:

- which finite variables represent the original epistemic state
- which EPDDL action schemas become grounded F-PDDL actions
- how observability and sensing are represented in JPM
- how nested or group modal goals are approximated or compiled
- how a JPM action name maps back to the original EPDDL action name
- whether validation can be deterministic or needs search over candidate EPDDL action names

For simple ontic domains, the mapping can be direct. For epistemic domains, the converter often has to compile belief structure into explicit finite state.

## Repository Layout

The relevant `team-1` files are:

- `tools/convert_epddl_benchmarks.py`: batch converter from bundled `plank` EPDDL benchmarks into `converted_from_epddl/`
- `tools/run_epddl_jpm_planner.py`: end-to-end bridge for one EPDDL input
- `tools/epddl_to_fpddl/common.py`: shared paths, naming, JSON loading, source copying, and EPDDL sanitization helpers
- `tools/epddl_to_fpddl/converters.py`: domain-specific F-PDDL generators
- `converted_from_epddl/`: generated or checked-in converted benchmark material
- `cpp/build/jpm_cpp_solver`: C++ JPM solver expected by the bridge
- `tools/export_jpm_ir.py`: exporter from JPM F-PDDL files into the solver IR

The sibling `plank` checkout provides:

- source EPDDL benchmarks under `../plank/benchmarks/domains/`
- action-type libraries under `../plank/benchmarks/libraries/`
- `../plank/build/plank` for `export` and `validate`

## Batch Conversion Pipeline

Use this path when refreshing all converted benchmark folders.

```bash
cd /home/guangh_ubuntu/projects/competition/iepc/team-1
python3 tools/convert_epddl_benchmarks.py --plank-binary ../plank/build/plank
```

The batch converter does the following.

1. Reads the domain registry in `DOMAIN_SPECS`.
2. Copies original EPDDL domain and problem files into `converted_from_epddl/<domain>/source/`.
3. Applies small compatibility sanitization where needed.
4. For normal supported domains, calls `plank export` to generate grounded JSON.
5. Writes grounded JSON under `converted_from_epddl/<domain>/grounded/`.
6. Calls the domain-specific converter in `tools/epddl_to_fpddl/converters.py`.
7. Writes generated F-PDDL files, helper Python files, visibility files, and `conversion.json`.
8. Rewrites `converted_from_epddl/manifest.json` and `converted_from_epddl/README.md`.

The generated output usually contains:

```text
converted_from_epddl/<domain>/
  source/
  grounded/
  domain.pddl
  <problem>_from_epddl.pddl
  <domain>.py
  visibility.json
  visibility.cpp
  conversion.json
```

Not every domain has every file. Fully explicit finite-state compilers, such as Tiger, may skip grounded JSON because they compile from EPDDL source directly.

## Single-Instance Bridge Pipeline

Use this path when the competition-facing planner receives one EPDDL task and should return an EPDDL-valid plan.

Example:

```bash
cd /home/guangh_ubuntu/projects/competition/iepc/team-1

python3 tools/run_epddl_jpm_planner.py \
  -d ../plank/benchmarks/domains/Coin-in-the-Box/cb.epddl \
  -p ../plank/benchmarks/domains/Coin-in-the-Box/instances/problem_1.epddl \
  -l ../plank/benchmarks/libraries/intermediate.epddl \
  --plank-binary ../plank/build/plank \
  --solver cpp/build/jpm_cpp_solver \
  --search greedy \
  --plan-file /tmp/coin_plan.json
```

The bridge performs these stages:

1. Normalize CLI input or a specification JSON into domain, problem, and library paths.
2. Sanitize EPDDL inputs when current `plank` compatibility requires it.
3. Export the EPDDL task with `plank export`, unless the domain has a source compiler.
4. Convert the grounded task into temporary F-PDDL files.
5. Export the JPM task to solver IR with `tools/export_jpm_ir.py`.
6. Solve the IR with `cpp/build/jpm_cpp_solver`.
7. Translate the JPM action sequence back into EPDDL action names.
8. Validate the translated action sequence with `plank validate`.
9. Write the translated plan JSON if validation succeeds, or `null` if no validator-passing plan is found.

This final validation step is the trust boundary. A plan is not considered an EPDDL answer merely because the converted F-PDDL model solved.

## Sanitization Before Export

Some source EPDDL files need harmless compatibility rewrites before they can be consumed by the current bridge path.

Current examples in `tools/epddl_to_fpddl/common.py`:

- Blocks-World removes a domain-level `Robot` constant and injects `(:agents Robot)` into the problem if needed.
- Tiger removes the domain-level `Knight` constant, injects `(:agents Knight)`, and normalizes zero-parameter `left` and `right` moves into explicit room-to-room public ontic moves.

Sanitization writes temporary input files. It does not edit the original `plank` benchmark files.

## Conversion Strategies We Use

The current converters use a few recurring strategies.

| Strategy | Used when | Example |
| --- | --- | --- |
| Direct finite variables | EPDDL state can be represented as ordinary finite values. | Blocks-World uses direct `on` and `clear` style variables. |
| Event-aware JPM model | EPDDL sensing or announcement effects need JPM visibility support. | Coin-in-the-Box tracks `event`, `peek_ready`, and `peeked` alongside ordinary state. |
| Existing JPM family reuse | A close JPM benchmark family already exists. | Grapevine maps into the existing grapevine-style F-PDDL family. |
| Simplified semantic model | The original EPDDL is close enough to a competition F-PDDL family after domain-specific simplification. | Gossip tracks direct secret learning for validator-oriented round trips. |
| Explicit belief-state compilation | The easiest faithful model is the reachable epistemic state graph itself. | Tiger and Consecutive-Numbers use a finite `belief_state` variable. |

For the explicit belief-state strategy, each F-PDDL action is a transition between compiled state IDs. Tiger, for example, has:

```pddl
(:functions
    (belief_state)
    (goal_reached)
)
```

and its generated problem ranges over:

```pddl
(:ranges
    (belief_state integer [0,1159])
    (goal_reached enumerate ['t','f'])
)
```

The action names include transition metadata, such as `listen_room1__from_0_to_2`, so the bridge can solve the compiled graph while still translating back to EPDDL-level action names.

## Plan Translation Back to EPDDL

`tools/run_epddl_jpm_planner.py` contains the current translation rules.

Examples:

- Coin-in-the-Box: `open_a -> open_A`, `peek_a -> peek_A`, `shout_tails_a -> shout-tails_A`
- Collaboration-through-Communication: `sense_a_box1_room1 -> sense_A_box1_room1`
- Gossip: `tell_a_b -> tell_A_B`
- Consecutive-Numbers: generated `ann_*__from_*_to_*` actions map back to original `ann_*` names
- Grapevine: `sharing_own_secret a as -> tell_A_A`, while quiet actions are dropped
- Tiger: generated transition suffixes are removed, and `save_princess_*` becomes `save-princess_*`

Active-Muddy-Child is the exception. Its JPM plan may only say `ask t`, so the bridge can brute-force candidate `ask_*` EPDDL actions and keep the first sequence accepted by `plank validate`.

## Current Domain Support

The current converter registry in `team-1/tools/convert_epddl_benchmarks.py` marks these families as supported:

- Active-Muddy-Child
- Blocks-World
- Coin-in-the-Box
- Collaboration-through-Communication
- Consecutive-Numbers
- Gossip
- Grapevine
- Tiger

Selective-Communication remains unsupported in the current bridge because the bundled EPDDL source still has parser compatibility issues under the newer `plank` build.

If generated summaries under `converted_from_epddl/` disagree with the code-level registry, regenerate them with `tools/convert_epddl_benchmarks.py`. Some generated reports are snapshots from earlier conversion runs.

## Tiger Special Case

Tiger is the clearest example of why we need more than `plank export`.

The original bundled Tiger problem has been fragile under the current `plank` parse/export path, especially around the finitary-S5 problem text and the original zero-parameter movement actions. The bridge therefore uses a source-based compiler:

- normalize `left` and `right` into explicit room-to-room moves
- construct a reachable finite belief-state graph from the source benchmark
- emit `tiger_from_epddl` with `belief_state` and `goal_reached`
- solve the compiled graph in JPM
- strip transition suffixes from the plan
- validate the translated EPDDL sequence in `plank`

The checked-in generated Tiger material lives in `converted_from_epddl/tiger/`.

## Validation Contract

The recommended correctness check is:

1. Convert EPDDL to F-PDDL.
2. Solve the converted F-PDDL task with JPM.
3. Translate the JPM plan back into EPDDL action names.
4. Run `plank validate` on the original EPDDL domain, problem, libraries, and translated action list.

A successful `plank validate` result means the plan survived both representations. A JPM-only solution is useful for debugging the converted model, but it is not enough to claim the original EPDDL task is solved.

## Known Limitations

- Conversion is domain-specific, not generic.
- Some epistemic features are approximated when JPM cannot directly represent the original modal formula.
- Some F-PDDL plans solve the converted model but fail original EPDDL validation.
- Generated reports in `converted_from_epddl/` can become stale after converter code changes.
- `plank` failures fall into different categories: parser/type compatibility, export failure, planner timeout, and validator runtime bottlenecks. These should be reported separately.
- A timeout from either solver is not an unsatisfiability proof.

## Practical Rule

When adding a new EPDDL family, start by deciding the semantic representation, not by writing PDDL text. The key design question is: what finite JPM variables preserve exactly the part of the EPDDL epistemic state needed for action applicability, goal checking, and plan validation?

Once that representation is clear, add a domain-specific converter, add plan-back translation rules, and use `plank validate` as the final check.
