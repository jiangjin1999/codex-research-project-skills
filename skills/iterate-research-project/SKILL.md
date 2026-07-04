---
name: iterate-research-project
description: Iterate one research project with evidence and keep its PROJECT_BOARD.html board in sync. Works standalone for a single project, or inside a portfolio managed by manage-research-portfolio. Use when Codex needs to classify and place project material into attempts, docs, data notes, literature, project-local skills, or AI working memory; set up or maintain the folders 0-Project, 1-Docs, 2-Data, 3-Paper_Survey, 4-Skills, and _ai; write the entry files README.md, PROJECT_GUIDELINES.md, GIT_WORKFLOW.md and the PROJECT_BOARD.html board; keep the _ai working memory (project_overview, project_board_spec, task_plan, findings, progress); track repeated attempts, failed paths, provenance, QC, paper evidence, decisions, status, next actions; and follow the markdown-first then board Sync Scale inside a single project.
---

# Iterate Research Project

Use this skill to keep one research project honest as it changes. The core habit is: classify the work, write to the narrowest durable place, record evidence, then sync only the summaries and the board that collaborators need.

Two rules run through everything:

1. **Markdown first, board second.** Update the source markdown or `_ai` note first. Only then sync `PROJECT_BOARD.html`.
2. **The board is a map, not a log.** `PROJECT_BOARD.html` shows current state and points to evidence. It never stores raw logs, private data, or absolute paths.

And one habit that drives iteration: **new idea → new subproject.** Experiment attempts are the core of the work. When there is something to try, create a fresh `0-Project/<date>_<slug>/` and iterate there instead of overwriting or endlessly re-iterating one attempt. Keep subprojects small and single-purpose; don't fear duplication. This keeps history append-only and comparable (see `references/project-iteration-system.md`).

**Standalone or inside a portfolio.** This skill is self-contained: use it on its own for a single project at any path — no portfolio required. Everything the project needs (folders, entry files, board, working memory, git policy) lives inside the project folder. *Optionally*, when the project sits inside a portfolio (`<slug>-project/<project>/`), sync status, owner, priority, and public state up to the portfolio dashboard with the `manage-research-portfolio` skill. When you run standalone, skip every "portfolio dashboard" and "registry" step in this skill — they are optional integrations, never prerequisites.

## Project Contract

Use this structure unless the project already has equivalent names. It is the copyable `_PROJECT_TEMPLATE` skeleton.

```text
<project>/
├── README.md              entry: one-sentence goal, folder map, quick start, current status
├── PROJECT_GUIDELINES.md  project-local sync rules, folder boundaries, HTML classification
├── PROJECT_BOARD.html     the board (看板): current-state map and navigation
├── GIT_WORKFLOW.md        git identity + per-change commit policy for this project
├── scripts/
│   └── init_project_git.sh   optional helper to set identity and first commit
├── 0-Project/             concrete attempts / experiments (created on the first attempt; the empty template ships without it — one 0-Project/<date>_<slug>/ per attempt)
├── 1-Docs/
│   └── README.md          the single fixed Docs entry + topic index
├── 2-Data/
│   └── DATA.md            source, provenance, permissions, versions, schema, QC, boundaries
├── 3-Paper_Survey/
│   └── README.md          reading queue, paper notes, evidence matrix, method sources
├── 4-Skills/
│   └── PROJECT_SKILLS.md  project-local prompts, AI rules, reusable procedures
└── _ai/
    ├── project_overview.md   goal, scope, status, owner, priority, next
    ├── project_board_spec.md how PROJECT_BOARD.html is generated/synced from sources
    ├── task_plan.md          current phase, plan, blockers, next
    ├── findings.md           stable findings, open questions
    └── progress.md           most recent meaningful sync, actions, validation, commit
```

The root files are entry + rules + board + git policy. Everything concrete goes into the most matching numbered folder; never pile materials at the project root, and never put the project overview, board rules, or long-term guidelines inside `0-Project/` (that folder is for concrete attempts only).

## Classify Before Writing

When the user gives new material, choose one landing place, then decide whether the board changes.

| User intent | Landing place | Board view it may touch |
| --- | --- | --- |
| "This is a concrete experiment / attempt" | `0-Project/<date>_<slug>/` | Tasks (任务尝试) |
| "This is a method note / meeting / decision / comparison" | `1-Docs/<date>_<topic>.md` + update `1-Docs/README.md` | Docs Map (文档地图) |
| "This is data / benchmark information" | `2-Data/DATA.md` | Materials (数据材料) |
| "This is a paper / external source / evidence" | `3-Paper_Survey/README.md` + evidence matrix | References (参考文献) |
| "This is a reusable workflow / prompt / AI rule" | `4-Skills/PROJECT_SKILLS.md` | (usually none) |
| "This changes status / next action / blocker" | `_ai/project_overview.md`, `_ai/task_plan.md` | Top overview + Progress (项目进度) |

If classification changes project scope, evaluation criteria, data boundary, public exposure, or whether an attempt belongs in the project, ask before treating it as confirmed. For low-risk naming/formatting, choose the conservative option and record the assumption in `_ai/progress.md`.

## The Board (看板)

`PROJECT_BOARD.html` is the single-project board. It answers at a glance: what is this project, what is current, what changed, where is the evidence, and where to continue. It is coordinated with the folders — each view is fed by a specific folder or `_ai` file.

Basic elements:

- **Home / back link** (persistent): a link at the very front of the page, in the upper-left brand area. Inside a portfolio, make it a `Back to dashboard` link pointing to the site root `/`; standalone, either omit it or point it to the project's own `README.md`. Preserve whatever you choose when creating, copying, publishing, or updating the page.
- **Version status:** page version `YYYY-MM-DD-vN` and last-sync marker (optionally a freshness/refresh control).
- **Top overview** (always visible, light): project name, one-sentence description, status, owner, recent sync, current focus, and at most one short progress line. Source: `_ai/project_overview.md`. Do not put phase lists, version cards, attempt lists, or long-term routes here.
- **Five mutually-exclusive views**, each mapped to a folder:

  | View | Fed by | Shows |
  | --- | --- | --- |
  | Progress (项目进度) | `_ai/progress.md`, `_ai/findings.md`, `1-Docs/README.md` | project-level major changes only: goal, scope, phase, key output, judgment, public state, compact version summary |
  | Docs Map (文档地图) | `1-Docs/README.md` + root structure | docs topic index + a VS Code Explorer-style structure tree (root level-1 files/folders and level-2 via `<details>/<summary>`), public-safe names only |
  | Tasks (任务尝试) | `0-Project/<attempt>/` | one collapsed block per real attempt folder: name, status, recent sync, one-line conclusion; detail stays in the attempt folder |
  | Materials (数据材料) | `2-Data/DATA.md` | data blocks, publicity, version, quality, usage boundaries |
  | References (参考文献) | `3-Paper_Survey/README.md` | papers, method sources, evidence status, impact; only if there is content |

Board rules: do not invent owners, status, priority, or future phases; do not add a standalone "next step" view (next action lives in the top overview, `_ai/task_plan.md`, or an attempt); use collapsed `<details>` for attempts and the structure tree; keep it a quiet research workbench, not a landing page. The generation rules live in `_ai/project_board_spec.md`. See `references/project-board.md` for the full contract.

## Iteration Loop

1. Restore context from `_ai/project_overview.md`, `_ai/project_board_spec.md`, `_ai/task_plan.md`, `_ai/findings.md`, `_ai/progress.md`, and the relevant folder README.
2. Confirm the operator's Git identity before editing project files; if missing, ask the user to configure their own and pause.
3. Name the current iteration in one sentence: question, attempt, or decision.
4. Create or update the narrowest source file first.
5. Record findings that change direction in `_ai/findings.md`; record actions, validation, and failed paths in `_ai/progress.md`.
6. Update `_ai/task_plan.md` when phase, blocker, or next action changes.
7. Apply the Sync Scale to decide whether to touch `PROJECT_BOARD.html`, then commit the changed safe files with explicit paths.

## Sync Scale

Judge every change against this scale before editing the board.

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only exploration, no new decision | Nothing |
| 1 | Minor finding, small failed branch, temporary note | Markdown or `_ai` only |
| 2 | New artifact/path/QC result, blocker, next action, status, docs map, structure tree, data boundary, reference, or attempt changed | Source markdown or `_ai`, then sync `PROJECT_BOARD.html` |
| 3 | Phase, milestone, public claim, owner, priority, or public state changed | Source markdown, board, `PROJECT_GUIDELINES.md`, and — only if the project belongs to a portfolio — the portfolio dashboard |

Do not sync the board on every edit. Sync when a collaborator would need the new state.

## Subproject Records

Each `0-Project/<date>_<slug>/README.md` should answer: what question the attempt tests; what inputs, papers, data notes, or assumptions it uses; what was run or reasoned through (goal, hypothesis, inputs, command, metrics); what failed, changed, or became stable; the conclusion and next action; and whether it affects project status, data notes, literature notes, or the board.

Record failed attempts. A failed path with a clear reason is a useful project asset, and it becomes one collapsed block in the board's Tasks view once it reaches a stable phase or decision point.

## Data And Literature

- Use `2-Data/DATA.md` for provenance, versions, access class, allowed locations, schema, QC, and derived-artifact boundaries. Keep project-derived data (features, trajectories, analysis-ready tables, QC intermediates) under this project's `2-Data/`, not in the global data area. Never write raw sensitive records, identity-bearing examples, credentials, or unreleased excerpts into notes, the board, or public copies.
- Use `3-Paper_Survey/README.md` for evidence that can change methods, evaluation, scope, or interpretation. Summarize papers by problem, method, data or benchmark, result, limitation, and implication for this project. Use an evidence matrix when several sources bear on one claim. Prefer concise paraphrase and links over long quotes.

## References

- Read `references/project-iteration-system.md` when creating project structure, entry files, subprojects, working-memory files, or synchronization rules.
- Read `references/project-board.md` when creating, reviewing, or syncing `PROJECT_BOARD.html`.
- Read `references/data-and-literature.md` before handling data notes, benchmark provenance, literature summaries, or evidence-to-decision updates.
