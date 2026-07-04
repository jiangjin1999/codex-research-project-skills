# Project Iteration System

Use this reference when turning one research idea into a durable, iterating project.

## Minimum Structure

```text
<project>/
├── README.md
├── 0-Subprojects/
├── 1-Docs/
│   └── README.md
├── 2-Data/
│   └── DATA.md
├── 3-Literature/
│   └── README.md
├── 4-Skills/
│   └── PROJECT_SKILLS.md
└── _ai/
    ├── project_overview.md
    ├── task_plan.md
    ├── findings.md
    └── progress.md
```

Create less if the project is still small, but keep responsibilities separate.

## Working Memory

| File | Purpose |
| --- | --- |
| `_ai/project_overview.md` | Goal, scope, owner, status, next action, public boundary |
| `_ai/task_plan.md` | Current goal, phase plan, blockers, next step |
| `_ai/findings.md` | Discoveries, risks, open questions, evidence |
| `_ai/progress.md` | Actions, validation, failed attempts, handoff |

Update these files when the project changes. Do not use them as a dumping ground for full transcripts.

## Subproject Naming

Use a dated slug:

```text
0-Subprojects/YYYY-MM-DD_short-attempt-name/
```

Examples:

- `2026-07-04_cot-self-consistency-baseline`
- `2026-07-04_tot-search-depth-ablation`
- `2026-07-04_reflexion-error-taxonomy`

## Attempt README Template

```markdown
# Attempt Name

## Question

## Inputs

## Method

## Results or observations

## Failed paths

## Decision impact

## Next action
```

## Sync Checklist

After a meaningful iteration, check whether to update:

- `1-Docs/README.md` if docs changed;
- `2-Data/DATA.md` if data, benchmark, provenance, or QC changed;
- `3-Literature/README.md` if paper evidence changed;
- `_ai/project_overview.md` if goal, status, scope, blocker, or next action changed;
- `_ai/task_plan.md`, `_ai/findings.md`, and `_ai/progress.md`;
- portfolio registry if the project-level state changed.
