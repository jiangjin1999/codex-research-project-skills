# reasoning-overview

Shared entry point for the whole `reasoning` portfolio.

Contents:

- `PROJECT_DASHBOARD.html` — the portfolio dashboard (control console). Persistent Portfolio Overview plus three views: Project Board, Data Board, Usage Guidelines. This is the human entry to the whole portfolio.
- `PROJECT_DASHBOARD_REQUIREMENTS.md` — the running requirements/spec log for the dashboard. Any change to the dashboard is described here first, then implemented.
- `PROJECT_TEMPLATE.md` — the canonical description of the single-project template, so every project starts from the same skeleton.
- `_PROJECT_PARKING_LOT.md` — future project ideas that should be remembered but not yet promoted into the mainline dashboard.
- `_PROJECT_ARCHIVE.md` — abandoned, deprecated, or superseded projects with stop reason and reactivation condition.
- `DASHBOARD_DEPLOYMENT.md` — how the dashboard is published (only the public-safe copy is deployed).
- `skills/` — portfolio-level reusable procedures (distinct from any single project's `4-Skills/`).
- `public-dashboard/` — the public-safe static copy that gets deployed. It never contains private data; each project has a sanitized page under `public-dashboard/projects/<slug>/`.

Rules:

- The dashboard shows current state and navigation only, never a full change log.
- Mainline projects appear on the default Project Board; parked and archived projects stay in the underscored secondary files unless intentionally promoted or reviewed.
- Update the source Markdown / `_ai` first, then the project `PROJECT_BOARD.html`, then this dashboard if portfolio-level fields changed.
- Only public-safe static files are deployed; never publish the whole workspace.
