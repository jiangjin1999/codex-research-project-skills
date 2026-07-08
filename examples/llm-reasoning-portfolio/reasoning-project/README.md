# reasoning-project

The project area. Every formal project is its own folder, copied from `_PROJECT_TEMPLATE/`. This README is the project registry: it mirrors the Project Board cards on the dashboard.

## Registry

Default dashboard lane: **mainline projects only**.

| Project | Question | Priority | Owner | Status | Next action | Blocker | Evidence | Last sync |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `_PROJECT_TEMPLATE` | Canonical skeleton — copy this to start a project | TBD | — | template | Copy to `reasoning-project/<name>/` and fill `_ai/project_overview.md` | none | `_PROJECT_TEMPLATE/README.md` | 2026-07-04 |
| `reasoning-baselines` | Chain-of-Thought vs Self-Consistency on public reasoning tasks | high | TBD | active (Phase 0) | Freeze GSM8K split + metric, then run first attempt | none | `reasoning-baselines/3-Paper_Survey/evidence-matrix.md` | 2026-07-04 |
| `search-based-reasoning` | Inference-time search over steps (Tree / Graph of Thoughts) | medium | TBD | planning | Finish ToT vs GoT evidence note, then define a small search task | none | `search-based-reasoning/3-Paper_Survey/evidence-matrix.md` | 2026-07-04 |
| `reflection-agents` | Self-critique and revision loops (Reflexion, Self-Refine, ReAct) | medium | TBD | planning | Draft the with/without-reflection comparison note | shared benchmark freeze | `reflection-agents/3-Paper_Survey/evidence-matrix.md` | 2026-07-04 |

## Parked Future Plans

These are remembered ideas, not active projects. Do not scaffold them or show them on the default Project Board until promoted.

| Idea | Why remember it | Trigger to revisit | Possible owner | Evidence/source | Promotion condition |
| --- | --- | --- | --- | --- | --- |
| `multimodal-reasoning-transfer` | Reasoning workflows may behave differently with visual inputs | revisit after text-only baseline and search projects have stable metrics | TBD | future reading queue | promote when there is a concrete benchmark and owner |

## Archived / Deprecated Projects

These are preserved for audit and to avoid repeating known bad paths. They are not part of the active dashboard flow.

| Project | Stop reason | Superseded by | Last evidence | Reactivation condition |
| --- | --- | --- | --- | --- |
| `prompt-zoo-scrape` | Too broad; collected prompts without a decision criterion | `reasoning-baselines` | draft note, not carried into public board | reactivate only if a benchmark-specific prompt source is needed |

## Portfolio Challenges

Portfolio-level drift and operational debt live in `reasoning-overview/_CHALLENGE_REGISTER.md`. Record the challenge before repair; project-level repairs should become a docs note or a concrete `0-Project/<date>_repair-.../` attempt only after the next action is clear.

Rules:

- Status requires an evidence path before `done`, `paused`, or `blocked`.
- Keep `next action` singular and concrete.
- The template row is pinned first here and on the dashboard as the "how to add a project" reference.
- The mainline table is the source for the dashboard's default Project Board; parked and archived sections are secondary lanes and do not trigger dashboard sync unless intentionally exposed.
