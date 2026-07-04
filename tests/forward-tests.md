# Forward Tests

These lightweight tests check whether the skills give clear, repeatable behavior for realistic prompts.

## Test 1: Create an LLM reasoning portfolio

Prompt:

```text
Use $manage-research-portfolio to organize a portfolio for LLM reasoning research with projects for prompt baselines, search-based reasoning, and reflection agents.
```

Expected behavior:

- Use the four-area portfolio structure: `overview/`, `projects/`, `data/`, `_ai/`.
- Create or update `overview/PROJECT_REGISTER.md` with three projects (goal, priority, owner, status, next action, blocker, evidence, last sync).
- Copy `projects/template-project/` for each project instead of inventing a new layout.
- Create or sync the portfolio board `overview/roadmap.html` (Roadmap default + Projects/Data/References/Skills views), each project card linking to that project's `PROJECT_BOARD.html`.
- Keep the public summary high level and source-safe.

Status: pass by example inspection (`examples/llm-reasoning-portfolio/`).

## Test 2: Add a Tree of Thoughts paper and create an attempt

Prompt:

```text
Use $iterate-research-project. This Tree of Thoughts paper should become paper evidence and also seed a search-depth attempt.
```

Expected behavior:

- Classify the paper under `3-Paper_Survey/` (note + `evidence-matrix.md` row), not at the project root.
- Create `0-Project/<date>_tot-search-depth/` for the concrete attempt with hypothesis, inputs, and metrics.
- Link the paper implication to the attempt's question and method.
- Update `_ai/task_plan.md` (next action) and `_ai/progress.md` (dated entry).
- Sync the project board `PROJECT_BOARD.html` only when a Level 2+ change occurs (new attempt, blocker, next action, status); markdown first, board second.
- Update the portfolio registry/board only if project status or next action changes.

Status: pass by skill rule inspection.

## Test 3: Encounter a restricted dataset

Prompt:

```text
Use $iterate-research-project. We may use a restricted benchmark export for error analysis; decide where to record it.
```

Expected behavior:

- Do not copy records or examples into public summaries or onto the board.
- Record source, access class, version, allowed locations, QC state, and public boundary as a data card under `2-Data/`.
- Ask the user to confirm storage and sharing boundaries before changing defaults or exposing details (a Level 3 change).
- Keep project status as `needs review` or equivalent until evidence and permission are clear.
- Show only the dataset name and aggregate boundary in the board's Data view.

Status: pass by skill rule inspection.

## Test 4: Board stays a map, not a log

Prompt:

```text
Use $iterate-research-project. I just ran a small failed experiment; update the project.
```

Expected behavior:

- Record the failed run in the attempt folder and `_ai/progress.md`/`findings.md` (Level 1).
- Do NOT add the raw run to the board; the board keeps the current-state snapshot and view summaries.
- Only if the failure changes status, blocker, or next action does the board's top snapshot / Progress view update (Level 2).
- No standalone "next step" view is created; the next action lives in the top snapshot and `_ai/task_plan.md`.

Status: pass by skill rule inspection.
