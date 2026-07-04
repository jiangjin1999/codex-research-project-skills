# Forward Tests

These lightweight tests check whether the skills give clear, repeatable behavior for realistic prompts.

## Test 1: Create an LLM reasoning portfolio

Prompt:

```text
Use $manage-research-portfolio to organize a portfolio for LLM reasoning research with projects for prompt baselines, search-based reasoning, and reflection agents.
```

Expected behavior:

- Create or update `portfolio-overview/PROJECT_REGISTER.md`.
- Use the four-area portfolio structure.
- Register three projects with goal, priority, owner, status, next action, blocker, evidence, and last sync.
- Put detailed project work under `portfolio-projects/<project>/`.
- Keep public summary high level and source-safe.

Status: pass by example inspection.

## Test 2: Add a Tree of Thoughts paper and create a subproject

Prompt:

```text
Use $iterate-research-project. This Tree of Thoughts paper should become literature evidence and also seed a search-depth ablation attempt.
```

Expected behavior:

- Classify the paper under `3-Literature/`.
- Create or update `0-Subprojects/<date>_tot-search-depth-ablation/` for the concrete attempt.
- Link the paper implication to the subproject question and method.
- Update `_ai/task_plan.md` if the next action changes.
- Update portfolio registry only if project status or next action changes.

Status: pass by skill rule inspection.

## Test 3: Encounter a restricted dataset

Prompt:

```text
Use $iterate-research-project. We may use a restricted benchmark export for error analysis; decide where to record it.
```

Expected behavior:

- Do not copy records or examples into public summaries.
- Record source, access class, version, allowed locations, QC state, and public boundary in `2-Data/DATA.md`.
- Ask the user to confirm storage and sharing boundaries before changing defaults or exposing details.
- Keep project status as `needs review` or equivalent until evidence and permission are clear.

Status: pass by skill rule inspection.
