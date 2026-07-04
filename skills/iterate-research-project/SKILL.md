---
name: iterate-research-project
description: Iterate one research project with evidence and keep its board in sync. Use when Codex needs to classify and place project material into attempts, docs, data notes, literature, project-local skills, or AI working memory; set up or maintain 0-Project, 1-Docs, 2-Data, 3-Paper_Survey, 4-Skills, and _ai; write the entry files README.md, PROJECT_GUIDELINES.md, and the PROJECT_BOARD.html board; track repeated attempts, failed paths, provenance, QC, paper evidence, decisions, status, next actions, and the markdown-first then board sync scale inside a single project.
---

# Iterate Research Project

Use this skill to keep one research project honest as it changes. The core habit is: classify the work, write to the narrowest durable place, record evidence, then sync only the summaries and the board that collaborators need.

Two rules run through everything:

1. **Markdown first, board second.** Update the source markdown or `_ai` note first. Only then sync `PROJECT_BOARD.html`.
2. **The board is a map, not a log.** `PROJECT_BOARD.html` shows current state and points to evidence. It never stores raw logs, private data, or absolute paths.

## Project Contract

Use this structure unless the project already has equivalent names.

```text
<project>/
├── README.md              entry: one-sentence goal, folder map, quick start, current status
├── PROJECT_GUIDELINES.md  collaboration rules, folder boundaries, naming, done criteria
├── PROJECT_BOARD.html     the board (看板): current-state map and navigation
├── 0-Project/             concrete attempts / experiments (one folder per attempt)
├── 1-Docs/                methods, decisions, meeting notes, comparisons, design notes
├── 2-Data/                source notes, provenance, permissions, versions, schema, QC
├── 3-Paper_Survey/        reading queue, paper notes, evidence matrix, method sources
├── 4-Skills/              project-local prompts, AI rules, reusable procedures
└── _ai/                   project_overview, task_plan, findings, progress, decisions
```

The three root files are entry + rules + board. Everything concrete goes into the most matching numbered folder; never pile materials at the project root, and never put the project overview inside `0-Project/`.

## Classify Before Writing

When the user gives new material, choose one landing place, then decide whether the board changes.

| User intent | Landing place | Board view it may touch |
| --- | --- | --- |
| "This is a concrete experiment / attempt" | `0-Project/<date>_<slug>/` | Attempts |
| "This is a method note / meeting / decision / comparison" | `1-Docs/<date>_<topic>.md` + update `1-Docs/README.md` | Docs Map |
| "This is data / benchmark information" | `2-Data/` data card | Data |
| "This is a paper / external source / evidence" | `3-Paper_Survey/` paper note + evidence matrix | References |
| "This is a reusable workflow / prompt / AI rule" | `4-Skills/` | (usually none) |
| "This changes status / next action / blocker" | `_ai/project_overview.md`, `_ai/task_plan.md` | Top Snapshot + Progress |

If classification changes project scope, evaluation criteria, data boundary, public exposure, or whether an attempt belongs in the project, ask before treating it as confirmed.

## The Board (看板)

`PROJECT_BOARD.html` is the single-project board. It answers, at a glance: what is this project, what is current, what changed, where is the evidence, and where to continue. It is coordinated with the folders — each view is fed by a specific folder or `_ai` file.

Basic elements:

- **Back link** to the parent portfolio board when one exists.
- **Top snapshot** (always visible): project name, one-sentence description, status, owner, recent sync, current focus, one short progress line. Source: `_ai/project_overview.md`.
- **Five views**, each mapped to a folder:

  | View | Fed by | Shows |
  | --- | --- | --- |
  | Progress | `_ai/task_plan.md`, `_ai/progress.md` | phase, major changes, key output, next action |
  | Docs Map | `1-Docs/README.md` + file tree | docs topic index + first/second-level structure tree |
  | Attempts | `0-Project/<attempt>/` | one collapsed block per real attempt folder |
  | Data | `2-Data/` | source, version, access class, QC, public boundary |
  | References | `3-Paper_Survey/` | papers, method sources, evidence status, impact |

- **Page version / recent-sync marker**, e.g. `2026-07-04-v3`.

Board rules: do not invent owners, status, or future phases; do not add a standalone "next step" view (next action lives in the top snapshot, `_ai/task_plan.md`, or an attempt); use collapsed `<details>` for attempts and the structure tree; keep it a quiet research workbench, not a landing page. See `references/project-board.md` for the full contract. A new project can start from the simple template board (entry cards + folder map + iteration loop) and grow into the five-view current-state board.

## Iteration Loop

1. Restore context from `_ai/project_overview.md`, `_ai/task_plan.md`, `_ai/findings.md`, `_ai/progress.md`, and the relevant folder README.
2. Name the current iteration in one sentence: question, attempt, or decision.
3. Create or update the narrowest source file first.
4. Record findings that change direction in `_ai/findings.md`; record actions, validation, and failed paths in `_ai/progress.md`.
5. Update `_ai/task_plan.md` when phase, blocker, or next action changes.
6. Apply the Sync Scale below to decide whether to touch `PROJECT_BOARD.html`.

## Sync Scale

Judge every change against this scale before editing the board.

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only exploration, no new decision | Nothing |
| 1 | Minor finding, small failed branch, temporary note | Markdown or `_ai` only |
| 2 | New artifact/path/QC result, blocker, next action, status, docs map, data boundary, reference, or attempt changed | Source markdown or `_ai`, then sync `PROJECT_BOARD.html` |
| 3 | Phase, milestone, public claim, owner, priority, status, or a durable rule changed | Source markdown, board, `PROJECT_GUIDELINES.md`, and the portfolio registry/board |

Do not sync the board on every edit. Sync when a collaborator would need the new state.

## Subproject Records

Each `0-Project/<date>_<slug>/README.md` should answer:

- What question does this attempt test?
- What inputs, papers, data notes, or assumptions does it use?
- What was run or reasoned through? (goal, hypothesis, inputs, command, metrics)
- What failed, changed, or became stable?
- What is the conclusion and next action?
- Does it affect project status, data notes, literature notes, or the board?

Record failed attempts. A failed path with a clear reason is a useful project asset, and it becomes one collapsed block in the board's Attempts view.

## Data And Literature

- Use `2-Data/` for provenance, versions, access class, allowed locations, schema, QC, and derived-artifact boundaries. Never write raw sensitive records, identity-bearing examples, credentials, or unreleased excerpts into notes, the board, or public copies.
- Use `3-Paper_Survey/` for evidence that can change methods, evaluation, scope, or interpretation. Summarize papers by problem, method, data or benchmark, result, limitation, and implication for this project. Use an evidence matrix when several sources bear on one claim. Prefer concise paraphrase and links over long quotes.

## References

- Read `references/project-iteration-system.md` when creating project structure, entry files, subprojects, planning files, or synchronization rules.
- Read `references/project-board.md` when creating, reviewing, or syncing `PROJECT_BOARD.html`.
- Read `references/data-and-literature.md` before handling data notes, benchmark provenance, literature summaries, or evidence-to-decision updates.
