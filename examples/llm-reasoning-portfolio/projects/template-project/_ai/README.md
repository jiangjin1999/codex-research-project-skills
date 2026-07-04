# _ai — working memory

Assistant-facing working memory for this project. These files are the source of truth the board reads from.

| File | Role | Board view it feeds |
| --- | --- | --- |
| `project_overview.md` | goal, status, owner, current focus, next action, public boundary | Top snapshot |
| `task_plan.md` | current round: goal, plan steps, blocker, next action | Progress |
| `findings.md` | stable findings, open questions, risks | Progress |
| `progress.md` | dated log of meaningful changes and validation | Top snapshot recent-sync |
| `decisions.md` (optional) | durable decisions and their rationale | — |

Rule: update these Markdown files first, then sync `PROJECT_BOARD.html` (markdown first, board second).
