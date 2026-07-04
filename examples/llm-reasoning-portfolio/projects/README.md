# Projects

This folder holds the project index and one subfolder per project. Each project follows the `template-project/` structure.

## Project list

| Project | Type | Status | One line |
| --- | --- | --- | --- |
| `template-project/` | template | — | Standard project template; copy it to start a new project. |
| `1-reasoning-baselines/` | project | active | Compare Chain-of-Thought vs Self-Consistency baselines on public reasoning tasks. |
| `2-search-based-reasoning/` | project | planning | Tree of Thoughts / Graph of Thoughts search-style reasoning. |
| `3-reflection-agents/` | project | planning | Reflexion / Self-Refine / ReAct self-critique and revision loops. |

Full fields (owner, priority, next action, evidence) live in `../overview/PROJECT_REGISTER.md`.

## Create a new project

```bash
cp -a projects/template-project projects/<new-project-name>
```

Then edit, in order: the new `README.md` one-liner, `_ai/task_plan.md` goal, and the `PROJECT_BOARD.html` title.

## Conventions

- `projects/` root holds only this index and project subfolders.
- Do not put experiments, papers, or data notes directly under `projects/`.
- Every project keeps the six core folders and the three entry files.
