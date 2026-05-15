# JPM C++ Apptainer Bundle

This folder is a minimal runnable copy of the JPM C++ Apptainer setup from
`justified_perspective_model`, prepared for moving into a separate repository.

Included:

- `Apptainer.demo_jpm_cpp`
- `cpp/`
- `jp/`
- `tools/`
- `benchmarks/`
- `converted_from_epddl/`
- `pyproject.toml`
- `.gitignore`
- `README.md`

External dependency:

- the Apptainer recipe still expects a sibling `plank` checkout with a built
  planner binary at `../plank/build/plank`

Build from this folder:

```bash
cd /home/guangh_ubuntu/projects/competition/iepc/jpm_cpp_apptainer_bundle
singularity build jpm_cpp.sif Apptainer.demo_jpm_cpp
```

Run with a spec file:

```bash
singularity run jpm_cpp.sif <specification.json> <plan.json>
```

Run with explicit EPDDL files:

```bash
singularity run jpm_cpp.sif \
  -d /path/to/domain.epddl \
  -p /path/to/problem.epddl \
  -l /path/to/library.epddl \
  --plan-file /path/to/plan.json
```

Notes:

- this copy includes the current JPM bridge updates, including the converted
  `Gossip`, `Blocks-World`, and `Consecutive-Numbers` work
- local `output/` folders and `.sif` images were intentionally not copied
