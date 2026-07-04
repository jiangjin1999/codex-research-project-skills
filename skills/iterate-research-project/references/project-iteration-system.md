# Project Iteration System

Use this reference when turning one research idea into a durable, iterating project.

## Minimum Structure

```text
<project>/
├── README.md              project entry: one-sentence goal, folder map, quick start, current status
├── PROJECT_GUIDELINES.md  collaboration rules, folder boundaries, naming, iteration flow, done criteria
├── PROJECT_BOARD.html     the board: current-state map and navigation (see references/project-board.md)
├── 0-Project/
│   ├── README.md
│   └── experiment-template.md
├── 1-Docs/
│   └── README.md
├── 2-Data/
│   └── README.md
├── 3-Paper_Survey/
│   ├── README.md
│   └── evidence-matrix.md
├── 4-Skills/
│   ├── README.md
│   └── AI_RULES.md
└── _ai/
    ├── project_overview.md
    ├── task_plan.md
    ├── findings.md
    └── progress.md
```

Create less if the project is still small, but keep the responsibilities separate. The three root files are the entry (`README.md`), the rules (`PROJECT_GUIDELINES.md`), and the board (`PROJECT_BOARD.html`).

## Folder Roles

| Folder | Role | Typical files |
| --- | --- | --- |
| `0-Project/` | Concrete attempts and experiment branches | attempt folders, experiment records, ablations, demos |
| `1-Docs/` | Methods and durable notes | method notes, decisions, comparisons, retrospectives |
| `2-Data/` | Data notes and project-derived artifacts | data cards, provenance, schema, QC, derived-output notes |
| `3-Paper_Survey/` | Evidence and method sources | paper notes, evidence matrix, method comparisons, citations |
| `4-Skills/` | Project-local AI collaboration | prompts, AI rules, checklists, reusable procedures |
| `_ai/` | Working memory | overview, plan, findings, progress, decisions |

## Root Entry Files

- `README.md`: one-sentence project statement, entry-file table, six core-folder table, recommended iteration loop, quick start, and a short **current status** block (stage, recent sync, current line, main risk).
- `PROJECT_GUIDELINES.md`: working principles, folder boundaries (what goes in / what does not), naming conventions, single-iteration flow, minimum experiment fields, AI collaboration rules, and done criteria.
- `PROJECT_BOARD.html`: the board. See `references/project-board.md`.

## Working Memory

| File | Purpose |
| --- | --- |
| `_ai/project_overview.md` | Goal, scope, owner, status, next action, public boundary (feeds the board top snapshot) |
| `_ai/task_plan.md` | Current goal, phase plan, blockers, next step |
| `_ai/findings.md` | Discoveries, risks, open questions, evidence |
| `_ai/progress.md` | Actions, validation, failed attempts, sync log |

Optional: `_ai/decisions.md` for durable decisions that change project direction, structure, data choice, or collaboration rules. Update these when the project changes; do not use them as a dump for full transcripts.

## Subproject Naming

Use a dated slug:

```text
0-Project/YYYY-MM-DD_short-attempt-name/
```

Examples:

- `2026-07-04_cot-self-consistency-baseline`
- `2026-07-04_tot-search-depth-ablation`
- `2026-07-04_reflexion-error-taxonomy`

## Attempt / Experiment Record Fields

Each attempt record should carry at least:

- `Goal` — what this attempt tests;
- `Hypothesis` — expected result and why it is worth testing;
- `Inputs` — code version, model/checkpoint, dataset, config, seed;
- `Command` — a reproducible run command or steps;
- `Metrics` — evaluation metric and observation method;
- `Result` — result, tables, figures, or log location;
- `Failed paths` — what did not work and why;
- `Conclusion` — does it support the hypothesis, and how it affects project judgment;
- `Next` — the next action.

## Sync Checklist

After a meaningful iteration, check whether to update:

- `1-Docs/README.md` if docs changed;
- `2-Data/` data card if data, benchmark, provenance, or QC changed;
- `3-Paper_Survey/README.md` if paper evidence changed;
- `_ai/project_overview.md` if goal, status, scope, blocker, or next action changed;
- `_ai/task_plan.md`, `_ai/findings.md`, and `_ai/progress.md`;
- `PROJECT_BOARD.html` per the Sync Scale in the skill;
- the portfolio registry/board if the project-level state changed.
