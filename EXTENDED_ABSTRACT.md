# Extended Abstract Draft

Working title:

**A Finite-State Bridge from EPDDL to JPM Planning**

## One-Paragraph Abstract

This planner addresses epistemic planning tasks written in EPDDL by compiling selected EPDDL benchmark families into finite F-PDDL models that can be solved by the Justified Perspective Model (JPM) planner. EPDDL is expressive and close to Dynamic Epistemic Logic, but its native action types, observability declarations, and modal goals do not map directly onto the finite-domain search representation used by JPM. Our planner therefore uses a bridge architecture: EPDDL inputs are grounded or normalized with `plank`, converted into domain-specific F-PDDL encodings, solved with the JPM C++ search engine, translated back into EPDDL action names, and checked with `plank validate`. This gives us a practical route for reusing JPM search on EPDDL benchmarks while keeping the original EPDDL semantics as the final validation contract. The current implementation supports several benchmark families, including Coin-in-the-Box, Collaboration-through-Communication, Grapevine, Active-Muddy-Child, Blocks-World, Consecutive-Numbers, Gossip, and Tiger. The most important design choice is to make representation explicit: simple domains are converted to ordinary finite variables, while harder epistemic domains such as Tiger are compiled into an explicit reachable belief-state graph. Evaluation on the local benchmark suite shows that the C++ JPM runtime can solve many native and converted F-PDDL tasks efficiently, while translated-plan validation exposes the remaining semantic gaps between the converted models and original EPDDL tasks.

## Extended Abstract

Epistemic planning requires reasoning not only about how actions change the world, but also about how they change agents' knowledge and beliefs. EPDDL provides a natural representation for such problems: domains can declare agents, events, action types, observability conditions, sensing actions, announcements, and modal goals. This expressiveness is useful for modelling, but it also makes direct execution difficult for planners whose internal representation is finite-domain forward search.

Our planner bridges this gap by translating EPDDL benchmark instances into F-PDDL models for JPM. The goal is not to implement a full generic EPDDL interpreter inside JPM. Instead, the planner uses a compilation pipeline that preserves the parts of each benchmark family needed for action applicability, goal checking, and plan validation. For each supported family, the converter chooses a finite representation of the epistemic state, generates a JPM-compatible F-PDDL domain and problem, solves the resulting finite task, then translates the JPM plan back to EPDDL action names. The translated plan is finally passed to `plank validate`, which remains the authoritative check against the original EPDDL semantics.

The architecture has four main components. First, the input layer accepts either explicit EPDDL domain/problem/library paths or a specification file. Second, the grounding and normalization layer uses `plank export` where possible and applies small compatibility rewrites for domains whose source representation needs to be made explicit for the current toolchain. Third, the conversion layer maps grounded or source-level EPDDL information into F-PDDL. This layer is intentionally domain-specific: Coin-in-the-Box uses event and visibility variables, Collaboration-through-Communication uses explicit first- and second-order belief variables, Grapevine reuses an existing JPM family, and Tiger is compiled into a finite belief-state transition system. Finally, the search and validation layer exports JPM IR, runs the C++ solver, translates the action sequence, and validates it back in `plank`.

The main contribution is a practical, validation-oriented bridge between two planning representations. The bridge allows EPDDL benchmarks to be run through the JPM search stack without pretending that EPDDL and F-PDDL are syntactically equivalent. It also makes semantic mismatch visible: a converted F-PDDL task may be solvable, but the result is only accepted as an EPDDL solution if the translated action sequence validates in `plank`.

The implementation also contributes a C++ execution slice for JPM. The C++ runtime loads an integer-friendly JPM IR, evaluates finite-domain preconditions and effects, supports a restricted epistemic fragment, dispatches domain-specific visibility models, and exposes several search algorithms including breadth-first variants, A*, greedy search, novelty-guided search, beam search, CABS, and LNBS. In the local benchmark results, C++ greedy solved 65 of 74 native JPM benchmark instances within a 30-second limit, compared with 63 of 74 for the Python greedy baseline. A broader Python/C++ comparison over 370 paired runs produced 292 status matches, while mismatches highlighted remaining runtime and semantic differences.

The EPDDL bridge is currently strongest when the conversion can be checked end-to-end by validation. Coin-in-the-Box and Collaboration-through-Communication are examples where converted plans can round-trip successfully to EPDDL for the tested instances. Other families expose useful limitations. Gossip can solve on the converted F-PDDL side while failing translated EPDDL validation, which indicates a semantic mismatch in the current conversion. Tiger requires a source-based belief-state compiler because the direct `plank export` path is fragile for the bundled representation; on the compiled model it has 1160 reachable belief states, 3261 transitions, and 10 goal states, with multiple JPM searches finding the same 8-step plan, but full validation remains a runtime bottleneck.

Overall, the planner demonstrates that EPDDL benchmark solving can be integrated with JPM by compiling epistemic structure into explicit finite representations and by treating validation as a first-class part of the planning pipeline. The approach is deliberately conservative: it favors domain-specific correctness and transparent validation over a broad but unverified generic translation. Future work should reduce domain-specific conversion effort, improve support for nested and group modal formulas, refresh stale generated benchmark reports, and make the validation path faster for large compiled belief-state models.

## Main Contributions To Claim

Use these as the contribution bullets in the abstract or introduction.

- A bridge pipeline from EPDDL input to JPM F-PDDL solving and back to EPDDL plan validation.
- A set of domain-specific EPDDL-to-F-PDDL compilers that make epistemic state explicit as finite JPM variables.
- A C++ JPM runtime that executes exported finite-domain IR with multiple search algorithms and domain-specific visibility models.
- A validation-oriented methodology: converted plans are checked against original EPDDL semantics with `plank validate`.
- A Tiger source compiler that avoids the fragile direct export path by compiling the reachable belief-state graph.

## Evidence Already In The Repo

Use these numbers only if they still match the regenerated results you submit.

| Evidence | Current source |
| --- | --- |
| C++ greedy solved 65/74 native JPM benchmark instances under a 30s limit. | `cpp/GREEDY_BFSDCU_30S_RESULTS.md` |
| Python greedy solved 63/74 native JPM benchmark instances under the same report. | `cpp/GREEDY_BFSDCU_30S_RESULTS.md` |
| Full Python/C++ comparison has 370 paired runs with 292 status matches. | `cpp/CPP_PYTHON_FULL_COMPARISON_RESULTS.md` |
| Coin-in-the-Box converted plans validate back in EPDDL for 5/5 tested instances in the older converted report. | `converted_from_epddl/README.md` |
| Collaboration-through-Communication converted plans validate back in EPDDL for 6/6 tested instances in the older converted report. | `converted_from_epddl/README.md` |
| Tiger compiled model has 1160 reachable belief states, 3261 transitions, and 10 goal states. | Prior Tiger bridge run; regenerate or cite from a fresh run before final submission. |

The converted benchmark README is currently a snapshot and may be stale. Before submission, rerun the conversion/evaluation scripts and update this evidence table from fresh outputs.

## What Still Needs To Be Added Before Submission

- Final planner name and team/member names.
- Competition or venue name, page limit, and required abstract format.
- Exact benchmark set used for the final evaluation.
- Machine details: CPU, RAM, OS/container, compiler, Python version, and timeout settings.
- Fresh regenerated result tables for native JPM benchmarks and converted EPDDL benchmarks.
- A clear distinction between native JPM benchmark results and EPDDL-bridge results.
- A small architecture figure showing `EPDDL -> plank export/sanitization -> F-PDDL -> JPM IR -> C++ solver -> EPDDL plan -> plank validate`.
- A table of supported EPDDL domains and conversion strategy for each.
- A table of round-trip validation results, not only solver success.
- A paragraph explaining why conversion is domain-specific rather than a generic syntax translation.
- A paragraph on limitations: unsupported EPDDL features, stale/generated artifacts, validator bottlenecks, and semantic mismatches.
- Related work references for EPDDL, Dynamic Epistemic Logic planning, `plank`, PDDL-style finite-domain planning, and JPM.

## Safe Claims And Claims To Avoid

Safe claims:

- The planner provides a practical bridge from selected EPDDL benchmark families into JPM-compatible F-PDDL.
- The final correctness check for EPDDL tasks is translated-plan validation with `plank`.
- Domain-specific conversion is necessary in the current implementation because EPDDL action types and modal goals do not map directly to JPM finite variables.
- The C++ runtime solves a restricted JPM/F-PDDL fragment, not the full EPDDL language.

Avoid overclaiming:

- Do not claim a complete generic EPDDL-to-F-PDDL compiler.
- Do not claim that every JPM solution is an EPDDL-valid solution.
- Do not claim unsupported modal features are handled unless they are tested in the current C++ runtime.
- Do not use stale converted benchmark tables as final evidence without regenerating them.
- Do not describe Tiger validation timeout as search failure; search on the compiled model and validation runtime should be reported separately.

## Suggested Final Abstract Structure

1. Motivation: epistemic planning needs representations for knowledge-changing actions.
2. Problem: EPDDL is expressive, but JPM solves finite F-PDDL-style tasks.
3. Approach: compile selected EPDDL families into finite JPM models.
4. System: grounding/sanitization, conversion, C++ search, plan translation, validation.
5. Evaluation: native JPM runtime results plus EPDDL round-trip validation results.
6. Limitations: domain-specific compilers and incomplete support for full EPDDL.
7. Conclusion: validation-oriented finite compilation is a workable route for EPDDL benchmark solving.

## Shorter Version For A Submission Form

We present a planner that solves selected EPDDL epistemic planning benchmarks by compiling them into finite F-PDDL models for the JPM planner. The system uses `plank` for grounding and final validation, domain-specific converters for preserving epistemic state in finite variables, a C++ JPM runtime for search, and plan translation rules that map JPM actions back to EPDDL. This architecture separates model execution from semantic validation: a converted task may be solved by JPM, but the resulting plan is accepted only when the translated action sequence validates against the original EPDDL instance. The current bridge supports several benchmark families and includes an explicit belief-state compiler for Tiger. Results on the local benchmark suite show that the C++ JPM runtime solves many finite-domain tasks within bounded time, while round-trip validation identifies where converted models faithfully preserve EPDDL semantics and where further conversion work is needed.
