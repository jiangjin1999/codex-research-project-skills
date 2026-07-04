# Portfolio System

Use this reference when creating or reorganizing a research portfolio.

## Folder Roles

| Folder | Role | Typical files |
| --- | --- | --- |
| `portfolio-overview` | Shared entry and current state | `README.md`, `PROJECT_REGISTER.md`, public-safe dashboard notes, operating rules |
| `portfolio-data` | Shared data and benchmark inventory | `DATA_CATALOG.md`, source manifests, access and export notes |
| `portfolio-projects` | Concrete research projects | One folder per project, each with its own project iteration system |
| `portfolio-ai` | Durable cross-project AI context | dated handoffs, cross-project decisions, prompt notes |

The overview is a map, not the full archive. Keep detailed project execution inside each project.

## New Project Intake

Before creating or registering a project, capture:

- project name and short slug;
- research question or deliverable;
- owner or temporary contact;
- priority;
- expected output;
- data or benchmark sources;
- sensitive-data boundary;
- public-safe summary boundary;
- first next action.

If key fields are missing, use `TBD` instead of inventing details.

## Synchronization Levels

| Level | Trigger | Update |
| --- | --- | --- |
| 1 | Local project work changed | Project source files and `_ai` notes only |
| 2 | Project status, blocker, evidence, or next action changed | Project summary plus portfolio registry |
| 3 | Public-safe view, shared data rule, or cross-project rule changed | Registry, dashboard/public notes, and cross-project handoff |

Do not synchronize everything on every edit. Synchronize when collaborators need the state.

## Portfolio Register Template

```markdown
| Project | Goal | Priority | Owner | Status | Next action | Blocker | Evidence | Last sync |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| reasoning-baselines | Compare baseline prompting strategies | high | TBD | active | Freeze benchmark set | none | 3-Literature/README.md | 2026-07-04 |
```

## Evidence Rules

- Status requires evidence.
- Evidence can be a paper note, benchmark result, project overview, run log, review, decision note, or user confirmation.
- If evidence is weak, label the status as draft, proposed, or needs review.
- Keep "next action" singular and concrete.

## Cross-Project Handoff Template

```markdown
# YYYY-MM-DD Topic Handoff

## Current state
- ...

## Changed sources
- ...

## Decisions needed
- ...

## Stale assumptions to re-check
- ...

## Next action
- ...
```
