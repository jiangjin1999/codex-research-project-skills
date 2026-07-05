# Portfolio Folder And Record System

Read this when creating or reorganizing portfolio folders, deciding where a record belongs, defining the registry, setting up the copyable project template, or writing cross-project handoffs.

## Core Ideas

- Separate overview, data, projects, and AI context into four prefixed top-level areas.
- Keep raw/authoritative data separate from project discussion and from project-derived data.
- Give every durable artifact one narrow home.
- Prefer lightweight Markdown first; add JSON, HTML, scripts, or external tools only when the team needs them.
- Record failed paths and branch decisions, not only success.

## Top-Level Areas

Prefix every area with a short portfolio slug `<slug>` (the demo uses `reasoning`).

| Path | Role | Typical content |
| --- | --- | --- |
| `<slug>-overview` | Team operating entry | overview README, `PROJECT_DASHBOARD.html`, dashboard requirements, project template index, global skills, `public-dashboard/` |
| `<slug>-project` | Concrete research projects | one folder per project or workflow, plus a copyable `_PROJECT_TEMPLATE` |
| `<slug>-data` | Data governance area | raw/authoritative dataset descriptions, manifests, dictionaries, access boundaries, governance notes |
| `<slug>-ai` | Cross-project AI context | handoffs, global prompt notes, context that should survive one conversation, named `<date>_<topic>.md` |

Two root files sit above the areas: `PROJECT_GUIDELINES.md` (global operating rules) and `GIT_WORKFLOW.md` (git identity + commit policy). These are files, not folders, and are not counted as folder cards on the dashboard.

## Project Registry

Keep a portfolio registry in `<slug>-overview/` and mirror a short index in `<slug>-project/README.md`. Separate three lanes so the mainline stays readable:

| Lane | Purpose | Default dashboard behavior |
| --- | --- | --- |
| Mainline | active or formally preparing projects | visible in the default Project Board |
| Parked | future project ideas, possible directions, plans not ready for execution | `_PROJECT_PARKING_LOT.md` or secondary/collapsed note; not counted as active work |
| Archived | abandoned, deprecated, superseded, or explicitly stopped projects | `_PROJECT_ARCHIVE.md` or `_archive/`; kept for history and reactivation logic |

Use a compact mainline table:

| Field | Meaning |
| --- | --- |
| Project | directory or short name |
| Goal | the question or deliverable it owns |
| Priority | `TBD`, `low`, `medium`, `high` |
| Owner | accountable person or `TBD` |
| Status | `proposed`, `planning`, `preparing`, `active`, `blocked`, `paused`, `done`, `archived` |
| Next action | one concrete next step |
| Blocker | data, method, compute, review, decision, or `none` |
| Evidence | key file, report, run log, review, paper note, or user confirmation |
| Last sync | date of latest meaningful update |

Status must have evidence. Never mark work `done` from memory alone.

Parked future plans need only: idea, why it matters, trigger to revisit, possible owner, source/evidence, and promotion condition. Put them in `<slug>-overview/_PROJECT_PARKING_LOT.md` by default. Do not create a full project folder or dashboard card until the idea has a concrete next action or coordination need.

Archived/deprecated projects need: stop reason, date, superseded-by/replacement if any, last evidence, what not to repeat, and reactivation condition. Record them in `<slug>-overview/_PROJECT_ARCHIVE.md`; if files must move, use `<slug>-project/_archive/<project-name>/`. Keep the folder and evidence; hide it from the default mainline flow unless explicitly reviewing history.

## Three-File Working Memory

For complex portfolio or project work, keep these in the relevant directory:

| File | Use |
| --- | --- |
| `task_plan.md` | goal, phases, status, decisions, blockers, errors |
| `findings.md` | discoveries, risks, open questions, source observations |
| `progress.md` | session log, actions, validation, handoff, commit made |

Update as you go: new discovery → `findings.md`; action/validation/failed attempt → `progress.md`; phase/blocker/next/scope change → `task_plan.md`.

## Copyable Project Template

`<slug>-project/_PROJECT_TEMPLATE/` is the single canonical skeleton that new projects copy. It carries the full single-project structure (see the `iterate-research-project` skill): root `README.md`, `PROJECT_GUIDELINES.md`, `PROJECT_BOARD.html`, `GIT_WORKFLOW.md`, `scripts/init_project_git.sh`, the folders `0-Project/1-Docs/2-Data/3-Paper_Survey/4-Skills/_ai`, and `_ai/{project_overview,project_board_spec,task_plan,findings,progress}.md`. Keep a `<slug>-project/PROJECT_TEMPLATE.md` as a short local guide to the project area. The template may appear on the dashboard as a pinned template card, but it never carries real research progress.

## New Project Initialization

When a new project is created, complete all of these together:

1. Confirm operator Git identity; record it in the new project `_ai/progress.md` or a `<slug>-ai` handoff.
2. Promote from the parked lane only if the idea is ready for mainline execution; otherwise add or update the parked note.
3. Copy `_PROJECT_TEMPLATE` to `<slug>-project/<project-name>/`.
4. Minimally adapt every template file to the new project; use `TBD` for missing facts.
5. Copy the project map to the public-safe path `<slug>-overview/public-dashboard/projects/<project-slug>/index.html`.
6. Add the project card to the dashboard, its server-state defaults, and the allowed public page path; set the card link to `/projects/<project-slug>/`.
7. Stage explicit paths and commit; never `git add -A`, never commit raw/derived data, logs, pid, cache, or secrets.

## Data Safety Records

For any project or dataset, record: source and location; public/private sensitivity; whether data can be copied, exported, or published; version/date; key fields or dictionary location; QC or known quality issues; de-identification requirements; and where scripts and outputs may live. Keep project-derived data (processed features, trajectories, analysis-ready tables, QC intermediates, project dictionaries) under the project's own `2-Data/`; keep the global `<slug>-data` area for raw/authoritative datasets, inventory, access boundaries, and governance. Never store row-level private examples in overview, skill, or handoff files.

## Cross-Project Handoff

Use `<slug>-ai/<date>_<topic>.md` for context that should survive a thread: current portfolio state in a few bullets, changed sources of truth, open decisions and who should decide, stale assumptions to re-check, and the next recommended action. Keep command logs in project-local `progress.md`, not in handoffs.
