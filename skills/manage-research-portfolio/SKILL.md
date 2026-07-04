---
name: manage-research-portfolio
description: Manage a multi-project research portfolio and keep its board in sync. Use when Codex needs to create, review, update, or synchronize a portfolio-level workspace with overview, projects, data, and _ai areas; a project registry with owner/priority/status/next-action/evidence; a template-project for new projects; shared data-boundary notes; cross-project AI handoffs; and a portfolio board/roadmap HTML whose views map to the overview, projects, data, and cross-project areas.
---

# Manage Research Portfolio

Use this skill to keep a research portfolio readable, current, and safe across many active projects. The portfolio answers: what projects exist, who owns them, what is current, what is blocked, what evidence supports the status, and where project-level work should continue.

Two rules run through everything:

1. **Markdown first, board second.** Update the registry or `_ai` note first, then sync the portfolio board.
2. **The portfolio stays compact.** Detailed experiments, data dictionaries, and paper notes live inside each project, not in the overview.

## Core Contract

Use four top-level areas unless the workspace already has equivalent names:

```text
overview/     shared entry, project registry, operating rules, portfolio board/roadmap
projects/     one folder per research project, plus a template-project and a projects register
data/         shared data inventory, access boundaries, dataset notes, governance
_ai/          cross-project AI handoffs and durable context
```

`projects/` holds only the project index and the project subfolders. New projects are created by copying `projects/template-project/` (the single-project structure), so every project shares the same folder logic and board.

## Start Workflow

1. Identify the scope: portfolio-wide, shared data boundary, cross-project handoff, one project card, or a reusable rule.
2. Read the smallest useful context: `overview/README.md`, the project registry, and any recent `_ai/` handoff related to the request.
3. If a concrete project is involved, switch attention to `projects/<project>/` and use the `iterate-research-project` skill there.
4. Classify the requested change before editing: new project intake, status sync, data-boundary note, board update, handoff, or portfolio rule.
5. Update the narrowest durable source first, then synchronize outward only if status, owner, priority, next action, blocker, evidence, or public state changed.

## Project Registry

Keep the registry in `overview/` (and mirror a short index in `projects/README.md`). Represent each project with these fields:

| Field | Meaning |
| --- | --- |
| Project | Stable folder name or short name |
| Goal | Question, deliverable, or decision the project owns |
| Priority | `TBD`, `low`, `medium`, `high`, or a local equivalent |
| Owner | Accountable person or `TBD` |
| Status | `proposed`, `planning`, `preparing`, `active`, `blocked`, `paused`, `done`, or `archived`, or a local equivalent |
| Next action | One concrete next step |
| Blocker | Missing data, method, compute, review, decision, or `none` |
| Evidence | File, report, run log, review, paper note, or user confirmation |
| Last sync | Date of latest meaningful update |

Do not mark work done without evidence. If evidence is missing, keep the status as `TBD`, `preparing`, `active`, or `needs review`.

## The Portfolio Board (看板)

The portfolio board is a roadmap/overview page (`overview/roadmap.html` or `overview/PORTFOLIO_BOARD.html`) that gives collaborators the whole-portfolio picture. It is coordinated with the folders: each view is fed by a portfolio area, and each project card links to that project's own `PROJECT_BOARD.html`.

Basic elements:

- **Roadmap (default view):** long-term main line, phases, and how the projects relate. Source: `overview/`.
- **Views mapped to areas:**

  | View | Fed by | Shows |
  | --- | --- | --- |
  | Roadmap | `overview/` | phases, main line, project map |
  | Projects | `projects/` + registry | one card per project: goal, owner, status, next action, link to its board |
  | Data | `data/` | shared sources, access class, versions, governance |
  | References | project `3-Paper_Survey` roll-up | cross-project papers and method sources |
  | Skills / Handoff | `_ai/` + shared skills | operating rules, cross-project handoffs |

- **Version / recent-sync marker.**
- Mutually exclusive view switching, quiet workbench styling, and no private data or absolute paths.

See `references/portfolio-board.md` for the full contract. A small portfolio can run on the text registry alone and add the HTML board once there are several projects to coordinate.

## Data And Publication Boundaries

- Keep portfolio-level data notes high level: source, access class, version, permitted uses, export boundary, QC state, and owner.
- Put project-derived artifacts under the relevant project unless the user explicitly defines a shared data product.
- Never publish raw sensitive records, credentials, unreleased internal decisions, or identity-bearing examples in skill files, the board, or handoffs.
- Before changing data storage defaults, public exposure rules, ownership, or permission boundaries, ask the user to confirm the scope and exception policy.

## Handoff Rules

Use `_ai/<date>_<topic>.md` for cross-project AI context that should survive a thread. A useful handoff contains:

- current portfolio state in 3-7 bullets;
- changed files or sources of truth;
- open decisions and who should decide;
- stale assumptions to re-check;
- next recommended action.

Avoid dumping command logs into handoffs. Keep execution detail in project-local progress files.

## Sync Scale

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only exploration, no new decision | Nothing |
| 1 | Local project work changed | Project source files and `_ai` notes only |
| 2 | Project status, blocker, evidence, or next action changed | Project summary + portfolio registry (and the board's Projects view) |
| 3 | Roadmap phase, public view, shared data rule, ownership, or cross-project rule changed | Registry, portfolio board, and cross-project handoff |

## References

- Read `references/portfolio-system.md` when creating or reorganizing portfolio folders, the registry, the template-project, or handoff files.
- Read `references/portfolio-board.md` when creating, reviewing, or syncing the portfolio board/roadmap page.
- Read `references/public-sharing.md` before preparing a public-facing board, repository, example, or community post.
