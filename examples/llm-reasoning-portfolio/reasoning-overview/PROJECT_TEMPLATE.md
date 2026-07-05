# Single-Project Template (canonical description)

Every formal project under `reasoning-project/` is a copy of `_PROJECT_TEMPLATE/`. The template guarantees that all projects share the same skeleton, so the dashboard and the project maps stay consistent.

## Root files

- `README.md` — what this project is and how to navigate it.
- `PROJECT_GUIDELINES.md` — this project's sync rules, customization boundaries, and HTML classification.
- `PROJECT_BOARD.html` — the project map (single page): a persistent `Back to dashboard` link to `/`, version status, a persistent project overview, and five views: `Progress`, `Docs`, `Tasks`, `Materials`, `References`.
- `GIT_WORKFLOW.md` — identity-before-edits and commit policy for this project.
- `.gitignore` — ignores data, logs, caches, and AI scratch that must not be committed.
- `scripts/init_project_git.sh` — one-time helper to check identity and initialize git hygiene.

## Folders

- `0-Project/` — concrete attempts and experiment routes. Each attempt is a dated subfolder (e.g. `2026-07-04_first-attempt/`) holding its own `data/ docs/ outputs/ reports/ scripts/` and a `TASK_BOARD.md`; attempt-level discussions and step handoffs live in that attempt's `docs/`. Attempts are append-only history.
- `1-Docs/` — project-level discussions, design, methods, comparisons, external summaries. `1-Docs/README.md` is the fixed index.
- `2-Data/` — data notes only: `2-Data/DATA.md` records source, version, method, QC, and boundary. Derived data lives here, never written back to global `reasoning-data`.
- `3-Paper_Survey/` — literature and evidence; each entry records the claim, the evidence, and its effect on this project's decisions.
- `4-Skills/` — project-local prompts, procedures, and skills in `4-Skills/PROJECT_SKILLS.md`.
- `_ai/` — AI working memory: `project_overview.md`, `project_board_spec.md`, `task_plan.md`, `findings.md`, `progress.md`.

## Board rules

The project `PROJECT_BOARD.html` is generated from the project's Markdown and `_ai` (never the reverse). `_ai/project_board_spec.md` defines how each source file maps to a board view. Update Markdown / `_ai` first, then the board (Level 2), then the portfolio dashboard if a portfolio-level field changed (Level 3).
