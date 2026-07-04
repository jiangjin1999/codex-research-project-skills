# reasoning-project

The project area. Every formal project is its own folder, copied from `_PROJECT_TEMPLATE/`. This README is the project registry: it mirrors the Project Board cards on the dashboard.

## Registry

| Project | Question | Priority | Owner | Status | Next action | Blocker | Evidence | Last sync |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `_PROJECT_TEMPLATE` | Canonical skeleton — copy this to start a project | TBD | — | template | Copy to `reasoning-project/<name>/` and fill `_ai/project_overview.md` | none | `_PROJECT_TEMPLATE/README.md` | 2026-07-04 |
| `reasoning-baselines` | Chain-of-Thought vs Self-Consistency on public reasoning tasks | high | TBD | active (Phase 0) | Freeze GSM8K split + metric, then run first attempt | none | `reasoning-baselines/3-Paper_Survey/evidence-matrix.md` | 2026-07-04 |
| `search-based-reasoning` | Inference-time search over steps (Tree / Graph of Thoughts) | medium | TBD | planning | Finish ToT vs GoT evidence note, then define a small search task | none | `search-based-reasoning/3-Paper_Survey/evidence-matrix.md` | 2026-07-04 |
| `reflection-agents` | Self-critique and revision loops (Reflexion, Self-Refine, ReAct) | medium | TBD | planning | Draft the with/without-reflection comparison note | shared benchmark freeze | `reflection-agents/3-Paper_Survey/evidence-matrix.md` | 2026-07-04 |

Rules:

- Status requires an evidence path before `done`, `paused`, or `blocked`.
- Keep `next action` singular and concrete.
- The template row is pinned first here and on the dashboard as the "how to add a project" reference.
- This table is the source for the dashboard's Project Board; sync the dashboard after any change here (Level 3).
