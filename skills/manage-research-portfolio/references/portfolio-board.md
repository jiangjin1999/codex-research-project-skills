# Portfolio Board (roadmap / overview page)

Use this reference when creating, reviewing, or synchronizing the portfolio board — the whole-portfolio page that lives in `overview/` (for example `overview/roadmap.html` or `overview/PORTFOLIO_BOARD.html`). It is a roadmap and navigation map, not a project board and not a full log.

## 1. Purpose

The portfolio board should help a collaborator answer:

- What is this portfolio and where is it going (roadmap, phases)?
- Which projects exist, who owns them, what is their status and next action?
- What shared data and governance boundaries apply?
- Which cross-project decisions need a human?
- Where do I click to reach a specific project's own board?

It is **not** a single project's `PROJECT_BOARD.html`, a full execution log, or a place for raw/private data and absolute paths.

## 2. Source areas (board is downstream of markdown)

| Source | Board use |
| --- | --- |
| `overview/README.md` + registry | roadmap, phases, project cards |
| `projects/<project>/_ai/project_overview.md` | each project card's status, owner, focus |
| `projects/<project>/PROJECT_BOARD.html` | link target for each project card |
| `data/` | shared data sources, versions, governance |
| `_ai/<date>_<topic>.md` | cross-project handoffs and open decisions |

If a source does not exist, write `TBD` rather than inventing content.

## 3. Information Architecture

Use a narrow left nav or compact top nav. Default to the Roadmap view. Keep views mutually exclusive.

| View | Show | Avoid |
| --- | --- | --- |
| Roadmap (default) | long-term main line, phases, how projects relate, one current-focus line | per-project task detail, raw logs |
| Projects | one card per project: goal, owner, priority, status, next action, blocker, link to its board | full project histories, private notes |
| Data | shared sources, access class, version, QC, governance, export boundary | row-level examples, private samples, paths |
| References | cross-project papers and method sources rolled up from projects | vague inspirations without evidence |
| Skills / Handoff | operating rules, shared skills, recent cross-project handoffs | long command logs |

Do not create a standalone "next step" view. Next actions live on each project card, in the registry, and in the current-focus line.

## 4. Layout Rules

- Default view must be the Roadmap. Name the file and page `roadmap`/`portfolio board`, not `dashboard`.
- Each project card links to `projects/<project>/PROJECT_BOARD.html` (or the deployed public copy).
- Quiet workbench styling: light background, white cards, one accent color, clear status labels; responsive and mobile-readable.
- Show a visible version / recent-sync marker.
- If views are mutually exclusive, switch them reliably: `showView()` toggles an `active` class **and** sets `hidden`/`aria-hidden` on inactive sections, backed by a CSS rule that hides every non-active `.view-section`. Verify no other view's sections stay visible in each nav item.

## 5. Board ↔ folder coordination

The portfolio board mirrors the folder contract:

```text
overview/   → Roadmap view + registry
projects/   → Projects view (one card per projects/<project>/, linking to its PROJECT_BOARD.html)
data/       → Data view
_ai/        → Skills / Handoff view
```

Keep this mapping stable so a collaborator can move between the board and the folders without surprise.

## 6. Sync Scale

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only exploration | Nothing |
| 1 | Local project change | Project files and `_ai` only |
| 2 | Project status, blocker, evidence, or next action changed | Registry + Projects view card |
| 3 | Roadmap phase, public view, shared data rule, ownership, or cross-project rule changed | Registry, board (Roadmap + affected views), and cross-project handoff |

## 7. QA checklist

Before handoff:

- each project card's status matches that project's `_ai/project_overview.md`;
- each project card links to a real `PROJECT_BOARD.html`;
- Data statements match `data/`;
- the default view is the Roadmap and each nav item shows only its own view;
- no private data, credentials, private filenames, or absolute paths are present;
- version / recent-sync is updated.
