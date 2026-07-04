# project_board_spec — _PROJECT_TEMPLATE

How `PROJECT_BOARD.html` is generated from this project's sources. The board is generated **from** these files, never the reverse.

| Board view | Source file(s) | What it shows |
| --- | --- | --- |
| Overview (persistent) | `_ai/project_overview.md` | question, scope, owner, priority, status, next, milestones |
| Progress (default) | `_ai/progress.md`, `_ai/task_plan.md` | timeline of actions + open plan items |
| Docs | `1-Docs/README.md` + tree of `1-Docs/` | design/method index as a structure tree |
| Tasks | `0-Project/<attempt>/TASK_BOARD.md` | per-attempt task boards (attempts collapsed) |
| Materials | `2-Data/DATA.md` | data notes (source/version/QC/boundary) |
| References | `3-Paper_Survey/evidence-matrix.md` | literature + evidence |

Persistent chrome: top-left **Back to dashboard** link → `/`; version status `YYYY-MM-DD-vN`; feedback launcher (front-end only in this example). Default active view = Progress.
