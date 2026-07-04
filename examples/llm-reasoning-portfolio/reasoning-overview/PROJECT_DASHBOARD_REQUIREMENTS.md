# PROJECT_DASHBOARD.html — Requirements & Spec Log

This file is the running specification for the portfolio dashboard. Describe a change here first, then implement it in `PROJECT_DASHBOARD.html`. Keep the newest requirement on top.

## Fixed structure (do not remove)

- **Look:** control-console layout — narrow dark sidebar on the left, main panel on the right, single page, no server round-trips for navigation.
- **Sidebar navigation:** exactly three items — `Project Board`, `Data Board`, `Usage Guidelines`. Views are mutually exclusive; switching hides the others completely.
- **Persistent Portfolio Overview:** always visible above the active view. Shows only stable summary facts: number of projects, number of tracked datasets, and an abbreviation/term list. No roadmap phases, no timeline, no long narrative.
- **Project Board (default view):** the core. One card per project with an editable priority tag (`low` / `medium` / `high` / `TBD`), an owner tag, status, last-updated time, the single next action, and a link to the project page. The template card is pinned first as the "how to add a project" reference.
- **Project-focus filters:** owner filter and priority filter above the Project Board. Filters are session-only (not persisted) and never delete data.
- **Data Board:** two-level classification — first by access class (`Private` / `Public`), then by category. Shows dataset name, role, version, QC state, and public boundary. No raw records.
- **Usage Guidelines:** three parts — (1) big-project idea, shown as folder-cards for the four portfolio areas; (2) single-project iteration, shown as folder-cards for the six template folders; (3) behavior norms, split into everyday use and initialization.
- **Theme selector:** top-right, persisted in `localStorage`.
- **Feedback launcher:** bottom-right; opens a small form (related project, suggestion, reason, evidence, needs-update). In this public example it is front-end only (no backend write).
- **Version status:** a `YYYY-MM-DD-vN` page version is shown; bumping the version is how freshness is signaled.

## Sync scale (how much to change)

- **Level 0** — no dashboard change (typo, internal note).
- **Level 1** — update Markdown / `_ai` only.
- **Level 2** — also update this project's `PROJECT_BOARD.html`.
- **Level 3** — also update `PROJECT_DASHBOARD.html` because a portfolio-level field changed (project set, owner, priority, status, next, public state, deployment/version).

## Change log (newest first)

- `2026-07-04-v1` — initial dashboard: overview + three views, focus filters, pinned template card, theme selector, feedback launcher, version status.
