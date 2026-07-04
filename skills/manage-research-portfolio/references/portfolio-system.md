# Portfolio System

Use this reference when creating or reorganizing a research portfolio.

## Folder Roles

| Folder | Role | Typical files |
| --- | --- | --- |
| `overview/` | Shared entry and current state | `README.md`, project registry, operating rules, portfolio board/roadmap |
| `projects/` | Concrete research projects | `README.md` index, `template-project/`, one folder per project |
| `data/` | Shared data and benchmark inventory | data catalog, source manifests, access and export notes |
| `_ai/` | Durable cross-project AI context | dated handoffs, cross-project decisions, prompt notes |

The overview is a map, not the full archive. Keep detailed project execution inside each project.

## projects/ Rules

- `projects/` holds only the project index (`projects/README.md`) and project subfolders.
- Do not put experiments, papers, or data notes directly in `projects/`.
- Create a new project by copying `projects/template-project/` — the single-project structure (`0-Project`, `1-Docs`, `2-Data`, `3-Paper_Survey`, `4-Skills`, `_ai`, plus `README.md`, `PROJECT_GUIDELINES.md`, `PROJECT_BOARD.html`). This keeps every project on the same folder logic and board.
- After copying, first edit the new project's `README.md` one-liner, its `_ai/task_plan.md` goal, and its `PROJECT_BOARD.html` title.

## New Project Intake

Before creating or registering a project, capture:

- project name and short slug;
- research question or deliverable;
- owner or temporary contact;
- priority;
- expected output;
- data or benchmark sources;
- sensitive-data boundary;
- public-safe summary boundary;
- first next action.

If key fields are missing, use `TBD` instead of inventing details.

## Synchronization Levels

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only exploration | Nothing |
| 1 | Local project work changed | Project source files and `_ai` notes only |
| 2 | Project status, blocker, evidence, or next action changed | Project summary + portfolio registry + board Projects view |
| 3 | Roadmap phase, public view, shared data rule, or cross-project rule changed | Registry, board, and cross-project handoff |

Do not synchronize everything on every edit. Synchronize when collaborators need the state.

## Portfolio Register Template

```markdown
| Project | Goal | Priority | Owner | Status | Next action | Blocker | Evidence | Last sync |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| reasoning-baselines | Compare baseline prompting strategies | high | TBD | active | Freeze benchmark set | none | 3-Paper_Survey/README.md | 2026-07-04 |
```

## Evidence Rules

- Status requires evidence.
- Evidence can be a paper note, benchmark result, project overview, run log, review, decision note, or user confirmation.
- If evidence is weak, label the status as draft, proposed, or needs review.
- Keep "next action" singular and concrete.

## Cross-Project Handoff Template

```markdown
# YYYY-MM-DD Topic Handoff

## Current state
- ...

## Changed sources
- ...

## Decisions needed
- ...

## Stale assumptions to re-check
- ...

## Next action
- ...
```
