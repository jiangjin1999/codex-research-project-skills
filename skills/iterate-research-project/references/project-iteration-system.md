# Project Iteration System

Use this reference when turning one research idea into a durable, iterating project.

## Minimum Structure

```text
<project>/
├── README.md              project entry: one-sentence goal, folder map, quick start, current status
├── PROJECT_GUIDELINES.md  collaboration rules, folder boundaries, naming, iteration flow, done criteria
├── PROJECT_BOARD.html     the board: current-state map and navigation (see references/project-board.md)
├── GIT_WORKFLOW.md        git identity + per-change commit policy for this project
├── scripts/
│   └── init_project_git.sh   optional helper to set git identity and make the first commit
├── 0-Project/                 concrete attempts and experiment branches
│   ├── README.md
│   └── <date>_<attempt-name>/   one folder per concrete attempt
│       └── docs/                attempt-local notes and step handoffs
├── 1-Docs/
│   └── README.md
├── 2-Data/
│   └── DATA.md
├── 3-Paper_Survey/
│   ├── README.md
│   └── evidence-matrix.md
├── 4-Skills/
│   └── PROJECT_SKILLS.md
└── _ai/
    ├── project_overview.md
    ├── project_board_spec.md
    ├── task_plan.md
    ├── findings.md
    └── progress.md
```

Create less if the project is still small, but keep the responsibilities separate. The root files are the entry (`README.md`), the rules (`PROJECT_GUIDELINES.md`), the board (`PROJECT_BOARD.html`), and the git policy (`GIT_WORKFLOW.md`).

## Folder Roles

| Folder | Role | Typical files |
| --- | --- | --- |
| `0-Project/` | Concrete attempts and experiment branches | dated attempt folders, attempt-local `docs/`, experiment records, ablations, demos |
| `1-Docs/` | Methods and durable notes | project-level discussions, method notes, decisions, comparisons, retrospectives |
| `2-Data/` | Data notes and project-derived artifacts | `DATA.md`, data cards, provenance, schema, QC, derived-output notes |
| `3-Paper_Survey/` | Evidence and method sources | paper notes, evidence matrix, method comparisons, citations |
| `4-Skills/` | Project-local AI collaboration | `PROJECT_SKILLS.md`, prompts, AI rules, checklists, reusable procedures |
| `_ai/` | Working memory | overview, board spec, plan, findings, progress |

## Root Entry Files

- `README.md`: one-sentence project statement, entry-file table, six core-folder table, recommended iteration loop, quick start, and a short **current status** block (stage, recent sync, current line, main risk).
- `PROJECT_GUIDELINES.md`: working principles, folder boundaries (what goes in / what does not), naming conventions, single-iteration flow, minimum experiment fields, AI collaboration rules, and done criteria.
- `PROJECT_BOARD.html`: the board. See `references/project-board.md`.
- `GIT_WORKFLOW.md`: git identity requirement, per-change commit policy, and explicit-path staging (never `git add -A`; never commit raw/derived data, logs, pid, cache, or secrets).

## Working Memory

| File | Purpose |
| --- | --- |
| `_ai/project_overview.md` | Goal, scope, owner, status, next action, public boundary (feeds the board top overview) |
| `_ai/project_board_spec.md` | How `PROJECT_BOARD.html` is generated/synced from the source files, plus the Sync Scale |
| `_ai/task_plan.md` | Current goal, phase plan, blockers, next step |
| `_ai/findings.md` | Discoveries, risks, open questions, evidence |
| `_ai/progress.md` | Actions, validation, failed attempts, sync log, commit made |

Keep `_ai/project_board_spec.md` as the durable board contract so any collaborator can regenerate the board consistently. Update these when the project changes; do not use them as a dump for full transcripts.

## Docs Vs Subprojects

Classify the work before writing:

| Work type | Location | Rule |
| --- | --- | --- |
| Discussion, method explanation, comparison, meeting note, or decision | `1-Docs/<date>_<topic>.md` | Use when the record is durable thinking, not an executable attempt |
| Concrete small attempt with inputs, criteria, outputs, or result | `0-Project/<date>_<attempt-name>/` | Use when the record needs its own run context or future continuation point |
| Note about one existing attempt | `0-Project/<attempt>/docs/<date>_<topic>.md` | Use when the discussion only makes sense inside that attempt |
| Challenge, drift, messy state, or audit finding | `1-Docs/<date>_challenge-review.md` + `_ai/findings.md` / `_ai/task_plan.md` | Record before repair; create a repair attempt only when there is an executable fix |
| Status, next action, blocker, validation, or recovery note | `_ai/{task_plan,findings,progress}.md` | Use for working memory and task continuity |

If in doubt, ask whether the content is "thinking about the project" or "trying something in the project." Thinking goes to `1-Docs/`; trying goes to `0-Project/`.

## Subproject Discipline

`0-Project/` holds **subprojects**: one folder per concrete attempt. Subprojects are the core unit of iteration, so create them freely and keep them small.

- **New idea → new subproject.** When you want to try something, start a fresh `0-Project/<date>_<name>/` instead of overwriting or endlessly re-iterating an existing attempt.
- **Don't fear duplication.** Parallel subprojects that reuse code, config, or data are fine; they keep results comparable and the history legible.
- **Keep each subproject small and single-purpose** so it is easy to read, compare, and abandon.
- **Promote when it earns it.** If a subproject grows its own data, roadmap, and audience, graduate it into a full project of its own (registering it in the portfolio if you use one).

This keeps iteration append-only: an accumulating, readable trail of what was tried — instead of one mutable blob.

## Subproject Lanes

Use lanes to keep the active path clear while still preserving non-linear thinking:

| Lane | Purpose | Minimum record |
| --- | --- | --- |
| Mainline | current attempts that define the active project path | full attempt README, current status, next action, evidence |
| Parked | future attempt ideas that are not ready to execute | idea, why it matters, trigger to revisit, possible inputs, promotion condition |
| Archived | abandoned, deprecated, or superseded attempts | stop reason, last evidence, replacement/superseded-by, what not to repeat |

Parked ideas do not require a full attempt folder. Use `_ai/task_plan.md`, `1-Docs/<date>_future-ideas.md`, or `0-Project/_parking-lot.md` when the idea is still speculative. Create `0-Project/<date>_<name>/` only when the idea has enough shape to need a handoff, criteria, inputs, or later execution.

Archived attempts should not be deleted. Keep their evidence and stop reason so the project does not repeat the same path. Move them to `0-Project/_archive/<attempt-name>/` or keep them in place with `Status: archived`, depending on the project's existing convention.

## Challenge Triage

Use challenge triage when the project has drift or operational debt rather than a single experiment to run. Typical project-level challenges: board/source mismatch, stale public page, oversized dirty worktree, data-provenance gap, local guideline or skill drift, handoff backlog, or archived work still showing as active.

Record a compact challenge review before fixing:

| Field | Meaning |
| --- | --- |
| Challenge | short public-safe name |
| Type | board drift, data-provenance gap, local-rule drift, dirty worktree, handoff backlog, archive residue, or other |
| Evidence | relative path or high-level observation |
| Blast radius | project overview, attempt, data note, board, public copy, or local rules |
| Owner | accountable person or `TBD` |
| Next action | one concrete review/fix/ask |
| Safety boundary | what must not be exposed or changed without confirmation |
| Sync level | 1, 2, or 3 |

If the next action is a concrete repair or audit run, create `0-Project/<date>_repair-<slug>/`. Otherwise keep it in `1-Docs/` and `_ai/` until the user chooses a fix.

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

Keep attempt-level discussions and step handoffs under `0-Project/<attempt>/docs/`. This keeps the subproject self-contained without polluting the project-level docs index.

## Context Compression And Handoff Hygiene

Write a compact handoff before the context window becomes expensive, after a small step completes, before switching topics/subprojects, or when a future collaborator would otherwise need the chat history.

Choose the narrowest Markdown home:

- project-level discussion or decision: `1-Docs/<date>_<topic>.md`;
- attempt-level note: `0-Project/<attempt>/docs/<date>_<topic>.md`;
- project working memory: `_ai/progress.md`, `_ai/findings.md`, or `_ai/task_plan.md`;
- portfolio-level handoff: `<slug>-ai/<date>_<topic>.md` when this project belongs to a portfolio.

Each handoff should include: current goal, completed step, key decisions, evidence paths, unresolved questions, next action, and whether board sync is needed. The handoff is normally Level 1; raise it to Level 2 only if it changes next action, status, blocker, docs map, data boundary, reference state, or attempt state.

## Sync Checklist

After a meaningful iteration, check whether to update:

- `1-Docs/README.md` if docs changed;
- `2-Data/DATA.md` if data, benchmark, provenance, or QC changed;
- `3-Paper_Survey/README.md` if paper evidence changed;
- `_ai/project_overview.md` if goal, status, scope, blocker, or next action changed;
- `_ai/task_plan.md`, `_ai/findings.md`, and `_ai/progress.md`;
- `PROJECT_BOARD.html` per the Sync Scale in the skill;
- the portfolio registry/dashboard if the project-level state changed and the project belongs to a portfolio.
