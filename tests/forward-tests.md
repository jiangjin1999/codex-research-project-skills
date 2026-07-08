# Forward Tests

These lightweight tests check whether the skills give clear, repeatable behavior for realistic prompts. The examples use slug = `reasoning` (see `examples/llm-reasoning-portfolio/`).

## Test 1: Create an LLM reasoning portfolio

Prompt:

```text
Use $manage-research-portfolio to organize a portfolio for LLM reasoning research with projects for prompt baselines, search-based reasoning, and reflection agents.
```

Expected behavior:

- Use the four prefixed portfolio areas: `reasoning-overview/`, `reasoning-project/`, `reasoning-data/`, `reasoning-ai/`.
- Create or update the registry `reasoning-project/README.md` with three projects (question, priority, owner, status, next action, blocker, evidence, last sync), with the `_PROJECT_TEMPLATE` row pinned first.
- Copy `reasoning-project/_PROJECT_TEMPLATE/` for each project instead of inventing a new layout.
- Create or sync the portfolio dashboard `reasoning-overview/PROJECT_DASHBOARD.html`: a persistent Portfolio Overview plus three views — Project Board (default), Data Board, Usage Guidelines — with the template card pinned first and each project card linking to that project's `PROJECT_BOARD.html`.
- Ship a sanitized `reasoning-overview/public-dashboard/` copy (landing + one page per project) and keep the public summary high level and source-safe.

Status: pass by example inspection (`examples/llm-reasoning-portfolio/`).

## Test 2: Add a Tree of Thoughts paper and create an attempt

Prompt:

```text
Use $iterate-research-project. This Tree of Thoughts paper should become paper evidence and also seed a search-depth attempt.
```

Expected behavior:

- Classify the paper under `3-Paper_Survey/` (note + `evidence-matrix.md` row), not at the project root.
- Create `0-Project/<date>_tot-search-depth/` for the concrete attempt with its own `data/docs/outputs/reports/scripts` and a `TASK_BOARD.md`.
- Link the paper implication to the attempt's question and method.
- Update `_ai/task_plan.md` (next action) and `_ai/progress.md` (dated entry).
- Sync the project board `PROJECT_BOARD.html` only when a Level 2+ change occurs (new attempt, blocker, next action, status); the new attempt shows in the Tasks view and the References view gains the paper. Markdown first, board second.
- Update the portfolio dashboard only if project status, owner, priority, or next action changes (Level 3).

Status: pass by skill rule inspection.

## Test 3: Encounter a restricted dataset

Prompt:

```text
Use $iterate-research-project. We may use a restricted benchmark export for error analysis; decide where to record it.
```

Expected behavior:

- Do not copy records or examples into public summaries or onto the board.
- Record source, access class, version, allowed locations, QC state, and public boundary in `2-Data/DATA.md`.
- Ask the user to confirm storage and sharing boundaries before changing defaults or exposing details (a Level 3 change).
- Keep project status as `needs review` or equivalent until evidence and permission are clear.
- Show only the dataset name and aggregate boundary in the board's Materials view, and classify it under Private on the dashboard's Data Board.

Status: pass by skill rule inspection.

## Test 4: Park a future project idea

Prompt:

```text
Use $manage-research-portfolio. I may want a future project on multimodal reasoning, but it is not a current priority and should not enter the main project board yet.
```

Expected behavior:

- Record the idea in `_PROJECT_PARKING_LOT.md` or a clearly marked parked section.
- Do not scaffold the full project template unless the user promotes it.
- Do not count it as an active mainline project.
- Capture trigger to revisit, possible owner, source/evidence, and promotion condition.

Status: pass by skill rule inspection.

## Test 5: Archive an abandoned attempt

Prompt:

```text
Use $iterate-research-project. This old prompt-ablation attempt is superseded; keep the record but remove it from the main line.
```

Expected behavior:

- Preserve the existing attempt folder and evidence.
- Mark it archived with stop reason, superseded-by/replacement, and what not to repeat.
- Use `0-Project/_archive/` if moving the attempt; otherwise keep it in place with `Status: archived`.
- Keep it out of the default active Tasks lane; show it only as collapsed archived work if the board is synced.
- Update `_ai/progress.md` and `_ai/findings.md` if the stop reason changes project judgment.

Status: pass by skill rule inspection.

## Test 6: Board stays a map, not a log

Prompt:

```text
Use $iterate-research-project. I just ran a small failed experiment; update the project.
```

Expected behavior:

- Record the failed run in the attempt folder and `_ai/progress.md`/`findings.md` (Level 1).
- Do NOT add the raw run to the board; the board keeps the current-state snapshot and view summaries.
- Only if the failure changes status, blocker, or next action does the persistent overview / Progress view update (Level 2).
- The next action lives in the persistent overview and `_ai/task_plan.md`; the five views stay Progress / Docs / Tasks / Materials / References.

Status: pass by skill rule inspection.

## Test 7: Route discussion to docs, not a subproject

Prompt:

```text
Use $iterate-research-project. Let's discuss whether exact-match is enough for the GSM8K evaluation, but do not run anything yet.
```

Expected behavior:

- Classify this as discussion/method/decision work, not a concrete attempt.
- Create or update `1-Docs/<date>_gsm8k-evaluation.md` and `1-Docs/README.md`.
- Do not create a new `0-Project/<date>_<name>/` folder unless the user turns the discussion into a concrete experiment.
- If the discussion changes project next action, blocker, or evaluation criteria, update `_ai/task_plan.md` or `_ai/findings.md` and sync the board per the Sync Scale.

Status: pass by skill rule inspection.

## Test 8: Write a compact handoff after a small attempt step

Prompt:

```text
Use $iterate-research-project. I finished freezing the metric inside the cot-vs-self-consistency attempt; record it and prepare for the next step.
```

Expected behavior:

- Record the step in `0-Project/<attempt>/docs/<date>_<topic>.md` or the attempt README/TASK_BOARD if that is the narrowest current file.
- Include current goal, completed step, key decision, evidence path, unresolved questions, next action, and whether board sync is needed.
- Update `_ai/progress.md` and `_ai/task_plan.md` if next action changed.
- Sync `PROJECT_BOARD.html` only if next/status/blocker/docs map/attempt state changed; otherwise keep it as Level 1 Markdown/_ai.

Status: pass by skill rule inspection.

## Test 9: Record portfolio drift before repair

Prompt:

```text
Use $manage-research-portfolio. The project registry, public project page, and dashboard may be out of sync. Find the challenge and update the workflow without fixing every page yet.
```

Expected behavior:

- Treat this as challenge triage, not broad cleanup.
- Create or update `_CHALLENGE_REGISTER.md` or `<slug>-ai/<date>_challenge-review.md`.
- Record challenge type, evidence, blast radius, owner/TBD, next action, safety boundary, sync level, and last reviewed.
- Do not expose private paths, raw logs, data names, or source-domain details.
- Only sync the dashboard if a public state, owner, status, next action, or public copy actually changes.

Status: pass by skill rule inspection.

## Test 10: Convert a project challenge into a repair attempt only when concrete

Prompt:

```text
Use $iterate-research-project. This project's data notes, board, and local rules seem inconsistent; decide how to record the issue.
```

Expected behavior:

- Create or update `1-Docs/<date>_challenge-review.md`, `_ai/findings.md`, and `_ai/task_plan.md`.
- Record the challenge type, evidence path, blast radius, owner/TBD, next action, safety boundary, and Sync Scale level.
- Do not create `0-Project/<date>_repair-.../` unless there is a concrete audit or fix to run.
- Do not sync `PROJECT_BOARD.html` unless next/status/blocker/data boundary/attempt state changes.

Status: pass by skill rule inspection.

## Structural parity check

`examples/llm-reasoning-portfolio/` is built to the exact structure both skills describe. To re-verify after edits:

- Portfolio areas exist and are prefixed: `reasoning-overview`, `reasoning-project`, `reasoning-data`, `reasoning-ai`.
- `reasoning-overview/_CHALLENGE_REGISTER.md` exists for portfolio-level drift and operational debt.
- `reasoning-overview/PROJECT_DASHBOARD.html` has a persistent overview and exactly three mutually-exclusive views; `public-dashboard/` mirrors it with per-project pages.
- Every project (and `_PROJECT_TEMPLATE`) has `0-Project/1-Docs/2-Data/3-Paper_Survey/4-Skills/_ai` plus root `README.md/PROJECT_GUIDELINES.md/PROJECT_BOARD.html/GIT_WORKFLOW.md/.gitignore/scripts/init_project_git.sh`.
- Every `PROJECT_BOARD.html` has a persistent Back-to-dashboard link, a version status, a persistent overview, and five views.
- Banned-term scan stays clean (no private names, datasets, or paths).

Status: pass (`python3 /tmp/validate_html.py`-style well-formedness + link checks; banned-term scan clean).
