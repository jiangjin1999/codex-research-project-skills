# Project Board (PROJECT_BOARD.html)

Use this reference when creating, reviewing, or synchronizing a single project's `PROJECT_BOARD.html`. The board is a lightweight current-state map for collaborators — not a report, not a full log, and not the portfolio dashboard.

## 1. Purpose

The board should help a collaborator answer:

- What is this project?
- What is current, blocked, recently changed, and next?
- Which files hold the evidence?
- Which attempts exist under `0-Project/`?
- What data/material boundaries matter?
- Which references support the work?

It is **not**: the portfolio overview dashboard, a full execution log, a manuscript, a dumping place for all markdown, or a place for raw/private data and absolute paths.

## 2. Source Files (board is downstream of markdown)

Update these first, then sync the board.

| Source | Board use |
| --- | --- |
| `_ai/project_overview.md` | name, description, owner, status, priority, current focus, public boundary |
| `_ai/task_plan.md` | current phase, blockers, next action |
| `_ai/findings.md` | stable findings, open questions, risks |
| `_ai/progress.md` | recent meaningful sync and evidence of change |
| `1-Docs/README.md` | Docs topic index and recently updated docs |
| project file tree | public-safe first/second-level structure tree |
| `0-Project/<attempt>/` | attempt cards / collapsed detail blocks |
| `2-Data/` data card | source, version, access class, QC, allowed use |
| `3-Paper_Survey/README.md` | papers, external methods, evidence state |
| `PROJECT_GUIDELINES.md` | behavior rules, classification rules, sync boundaries |

If a source file does not exist, write `TBD` or "not yet formed" instead of inventing content.

## 3. Two Board Tiers

- **Template board (default for a new project):** a navigation map with three parts — entry cards (`README.md`, `PROJECT_GUIDELINES.md`, `_ai/task_plan.md`), the six core-folder cards, and the recommended iteration loop. Every new project starts here.
- **Current-state board (as the project matures):** adds the top snapshot and the five views below. Promote to this tier once the project has real status, attempts, and evidence to show.

## 4. Information Architecture (current-state board)

Compact top nav or a narrow left nav, with a persistent top snapshot and mutually exclusive views.

| View | Show | Avoid |
| --- | --- | --- |
| Top snapshot | name, one-sentence description, status, owner, recent sync, current focus, one short progress line | phase lists, long plans, attempt lists, methodology |
| Progress | project-level major changes: goal, scope, phase, key output, judgment, public state | daily commands, tiny discoveries, raw logs |
| Docs Map | `1-Docs` topic index + first/second-level structure tree with `<details>/<summary>` | full deep tree, private filenames, absolute paths |
| Attempts | one collapsed block per real `0-Project/<attempt>/` folder | attempts with no folder, messy transcripts |
| Data | source, version, access class, QC, allowed use, public/private boundary | row-level examples, private samples, unapproved paths |
| References | papers, external sources, method references, evidence status, project impact | vague inspirations without evidence |

Do not create a standalone "next step" view. A next step belongs in the top snapshot, `_ai/task_plan.md`, Progress, or a specific attempt.

## 5. Layout Rules

- Put a `Back to portfolio board` link first when a parent dashboard exists.
- Keep the first viewport utilitarian: this is a research workbench, not a marketing page. Quiet palette (light background, white cards, one accent color), clear status labels, shallow cards.
- Mobile readable: no horizontal overflow, stacked cards, tappable nav.
- Use collapsed `<details>` for attempts and the structure tree. A closed attempt shows name, status, recent sync, and a one-line conclusion.
- Show a visible page version or recent-sync string, e.g. `YYYY-MM-DD-vN`.
- If you use mutually exclusive views, switch them reliably: a `showView()` that toggles an `active` class **and** sets `hidden`/`aria-hidden` on inactive sections, plus a CSS rule that hides every non-active `.view-section`. Verify that no other view's sections stay visible.

## 6. Docs Map structure tree

`Docs Map` must include both the `1-Docs` topic index and a project structure tree that shows at least root-level files/folders and second-level contents. Use relative names only; use `<details>/<summary>` for the second level; never include private-data filenames, sample identifiers, sensitive result names, or absolute paths. Say "expand further as needed" instead of deep-nesting outputs.

## 7. Attempt sync

`Attempts` is driven by `0-Project/<attempt>/`. When an attempt is created or reaches a stable phase/result/pause/decision:

1. update the attempt's own README first;
2. update `_ai/progress.md`, `_ai/findings.md`, or `_ai/task_plan.md` as needed;
3. sync the collapsed attempt block in the board if Sync Scale Level 2 is reached.

## 8. Public-safe copy

If the project has a shareable copy, keep a separate public path (for example `public/projects/<slug>/index.html`). Copy only reviewed HTML and required static assets. Never expose markdown, scripts, logs, caches, raw or derived data, or private files. Remove or replace local absolute paths and keep the back link pointing at the deployed dashboard root.

## 9. QA checklist

Before handoff:

- board status matches `_ai/project_overview.md` and `_ai/task_plan.md`;
- recent sync matches `_ai/progress.md`;
- Docs Map matches `1-Docs/README.md`;
- Attempts map to real `0-Project/<attempt>/` folders;
- Data statements match the `2-Data` card;
- References come from `3-Paper_Survey`;
- no private data, credentials, private filenames, or absolute paths are present;
- page version / recent sync is updated;
- if mutually exclusive views are used, each nav item shows only its own view.
