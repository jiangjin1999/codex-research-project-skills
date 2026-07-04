# Template Project

A standard project template for research, experiments, and durable notes. Copy this folder to start a new project. The project iterates through 6 core folders; the root holds navigation and rules only.

## Project one-liner

> One sentence: the problem, the object, and the expected output.

## Entry files

| File | Purpose |
| --- | --- |
| `README.md` | Project entry: goal, folders, quick start, current status. |
| `PROJECT_GUIDELINES.md` | Collaboration rules, naming, iteration flow, done criteria. |
| `PROJECT_BOARD.html` | The board (看板): current-state map and navigation. |

## Core folders

| Folder | Role | Typical content |
| --- | --- | --- |
| `0-Project/` | Concrete attempts and experiment branches | plans, run records, results, retrospectives, branch hypotheses |
| `1-Docs/` | Topic docs and method notes | method notes, background, design trade-offs, retrospectives |
| `2-Data/` | Data notes and project derivations | data cards, sources, schema, cleaning and derivation records |
| `3-Paper_Survey/` | Paper evidence and method sources | paper notes, evidence matrix, method comparisons, citations |
| `4-Skills/` | Project-local AI rules | AI rules, prompts, checklists, project preferences |
| `_ai/` | Plan, findings, sync | overview, task plan, findings, progress |

## Recommended iteration loop

1. Record this round's goal and acceptance criteria in `_ai/task_plan.md`.
2. Add paper evidence and method sources in `3-Paper_Survey/`.
3. Note data inputs, schema, limits, and derivations in `2-Data/`.
4. Create an experiment record in `0-Project/` with hypothesis, command, metrics, conclusion.
5. Promote reusable methods or retrospectives into `1-Docs/`.
6. Sync findings, risks, and next step in `_ai/progress.md`, then update `PROJECT_BOARD.html` per the sync scale.

## Quick start

1. Edit this README's one-liner.
2. Open `PROJECT_BOARD.html` for the project map.
3. Read `PROJECT_GUIDELINES.md` for naming and collaboration rules.
4. Copy the templates in each folder to start the first attempt or survey.

## Current status

- Stage: initialized
- Recent sync: TBD
- Current line: TBD
- Main risk: TBD
