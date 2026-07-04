# Portfolio Dashboard Contract (PROJECT_DASHBOARD.html)

Read this before creating or significantly changing the portfolio dashboard. The dashboard is `<slug>-overview/PROJECT_DASHBOARD.html`: a team-browsable current-state console. It shows current state, the project portfolio, data classification, usage rules, deployment status, and a feedback intake — never a real file browser, data entry point, or execution log.

## Positioning

- The dashboard should feel like a portfolio-management / control console, visually distinct from any single-project research roadmap.
- It is a map and navigation surface. Detailed work stays in each project's documents and `_ai` memory.
- Keep it public-safe: no real local paths, private data, secrets, or clickable internal files.

## Layout

- **Narrow sidebar:** title, version status, and exactly three nav items — `Project Board`, `Data Board`, `Usage Guidelines`. Do not put the Portfolio Overview in the nav.
- **Project focus** (weaker block under the nav): owner filter, priority filter, and a subtle matching-project list. Default is all owners + all priorities. These filters are session-only UI state: they reset on refresh and are never written to browser or server state.
- **Persistent Portfolio Overview** in the main content, always visible above the views: compact and low height. It summarizes only project count, dataset count, project abbreviations, and dataset abbreviations. No roadmap phases, no long explanatory text.
- **Three mutually-exclusive views** below the overview: clicking one shows only that view plus the persistent overview.
- **Feedback launcher:** a fixed bottom-right floating button opening a feedback panel (contributor, category, related location, comment). Do not let it occupy the sidebar or cover the main content.
- **Theme selector:** a small cornered floating control (top-right). Support multiple styles via CSS variables / role tokens (not duplicated layouts); default to a light, readable style with darker/colorful options. Store the choice in browser local storage only.
- **Mobile:** the sidebar becomes a compact top control area; nav and theme stay tappable; cards stack into one column; long file names, URLs, and model names wrap with `overflow-wrap: anywhere` / `word-break: break-word` and never break the grid.

## View: Project Board (core)

- One card per formal project, read top-to-bottom, left-to-right. Provide sort controls (start time, priority).
- Card top uses editable tags for priority (`low` / `medium` / `high`, `TBD` allowed) and owner (display names only).
- Card body: status, detailed time, next step, and a project-inner-page link placeholder. Do not include a standalone risk field.
- Team-fact fields (title, description, time, status, next, page link, priority, owner) should render from a protected server state store first; keep HTML text only as a fallback for failed reads.
- Editable team facts must persist through the protected state API; do not implement them as DOM-only controls that reset on refresh.
- The template project is pinned first with a browser-local show/hide toggle (default visible); the toggle affects both the focus list and the main template card, and the template card is exempt from owner/priority filters.
- External projects may be registered with only a public URL, public summary, status, owner, priority, and next step; never store access tokens, passwords, or internal paths.

## View: Data Board

- Register datasets in a two-level classification: a primary access boundary (e.g. `Public` / `Private`) and a secondary data type inside each boundary.
- Distinguish actual datasets from classification dimensions. Do not count skills, workflows, tools, or category names as datasets. The compact overview lists actual registered datasets only.
- Leave categories visibly empty until real datasets are registered under them.

## View: Usage Guidelines

Three parts, in this order:

1. **Big-project idea:** small structure cards that match the top-level core folders one-to-one, showing the real folder names `<slug>-overview`, `<slug>-data`, `<slug>-project`, `<slug>-ai` and each function. The root `PROJECT_GUIDELINES.md` is described as the global-rule file, not a folder card.
2. **Single-project iteration:** the same card format for the `_PROJECT_TEMPLATE` core folders `0-Project`, `1-Docs`, `2-Data`, `3-Paper_Survey`, `4-Skills`, `_ai`, each with the real folder name and function. Write `0-Project` as the real folder name, not an abstract step. Keep only explanatory text and folder cards here — no separate rule strip.
3. **Behavior norms:** split into `Everyday use` (creating, updating, syncing, cross-project judgment during iteration) and `Initialization` (Git identity/setup, preparation before creating or taking over a project). Long explanations collapse into a corner help layer. Behavior-norm card edits, highlight flags, added cards, and card order are team facts and must persist through the protected state store.

This view also states the single-project collaboration frame: the single-project HTML is a project map, Docs keeps only one fixed `README.md` entry, and AI indexes/synchronizes and asks a human on conflicts or high-impact gaps. It reminds users of the working-directory rule, the project data-management rule, Git identity, modular collaboration language, and high-impact rule confirmation.

## Persistence Model

- Team facts (priority, owner, status, next, board card text, behavior-norm cards) → protected server state store; HTML is fallback only.
- Personal preferences (theme, sort mode, active tab, template show/hide, focus filters) → browser local storage or session only; never team state.
- Changing one project's owner must not trigger a full re-sort or visible jump; re-sort only on explicit sort change, a priority change that affects sort, or first load.

## Deployment And Freshness

- Page version uses `YYYY-MM-DD-vN`, shown with a top-left freshness indicator and a manual refresh action.
- Publish only public-safe HTML and the minimal API; never expose Markdown, scripts, logs, pid files, or raw feedback as pages. See `public-sharing.md`.

## Sync Scale

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only exploration, no new decision | No dashboard change |
| 1 | Minor action or finding | Markdown/log only |
| 2 | New project card fact, status, blocker, next action, dataset, or usage rule | Update the relevant view/card and the source Markdown |
| 3 | Public claim, phase, deployment/version, or a long-term operating rule | Update the dashboard, the published copy, the requirements log, and source Markdown |

## QA Checklist

- Only the persistent overview and one view are visible at a time; switching hides the others (class toggle plus `hidden`/`aria-hidden`).
- Links point to public pages (`/projects/<slug>/`) or clearly-marked placeholders, never local paths.
- Folder cards in Usage Guidelines match the real folder tokens exactly.
- No private data, secrets, or real local paths anywhere.
- Desktop and mobile both readable; long tokens wrap.
- Every dashboard change is mirrored in the dashboard requirements log and the published copy.
