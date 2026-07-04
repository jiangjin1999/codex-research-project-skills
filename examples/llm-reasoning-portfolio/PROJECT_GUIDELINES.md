# Portfolio Guidelines (reasoning)

_Global operating rules for the whole `reasoning` portfolio. Individual research, analysis, docs, and AI records should live inside the matching project folder. This example is public and uses only public LLM-reasoning papers and open benchmarks._

## 1. Overall principles

- `reasoning-overview` is the shared entry: dashboard, requirements log, templates, global skills, and the published dashboard copy.
- `reasoning-data` is the global data area: raw/authoritative datasets, inventory, access boundaries, governance. Project-derived data is not written back here.
- `reasoning-project` is the project area: every formal project has its own folder, copied from `_PROJECT_TEMPLATE`.
- `reasoning-ai` is the cross-project AI context area: handoffs, global prompts, and context that should survive one conversation.
- After anyone creates or advances a project, synchronize `reasoning-overview/PROJECT_DASHBOARD.html`.
- Creating a formal project also initializes its project map HTML, published copy, dashboard card, and project-page link.

## 2. New project rules

Create formal projects under `reasoning-project/<project-name>/` by copying `_PROJECT_TEMPLATE`. Before creating, state: project name, question, likely data, expected deliverable, owner or temporary contact, initial priority, whether it touches any private data, and the operator's Git identity. Existing projects need not migrate immediately.

## 3. Work locations

- Project root `PROJECT_GUIDELINES.md`: this project's sync rules, customization boundaries, HTML classification.
- Project root `PROJECT_BOARD.html`: this project's current state; kept in sync with its docs and `_ai`.
- Goal/scope/owner/status/next/milestones: project `_ai/project_overview.md`. Board generation rules: project `_ai/project_board_spec.md`.
- `0-Project/`: concrete attempts, experiment routes, analysis branches only — not overview, board rules, or long-term guidelines.
- Design, meetings, methods, comparisons, external summaries: project `1-Docs/`, with `1-Docs/README.md` as the fixed index.
- Data notes/permissions/versions/QC/boundaries: project `2-Data/DATA.md`. Project-derived data stays in the project's `2-Data/`, never written back to global `reasoning-data`.
- Literature and evidence: project `3-Paper_Survey/`.
- Project-local prompts/procedures/skills: project `4-Skills/PROJECT_SKILLS.md`.
- AI working memory: project `_ai/` (project_overview, project_board_spec, task_plan, findings, progress).
- After a project exists, run project-specific edits from that project root, not from the portfolio root.

## 4. Dashboard sync rules

Sync `reasoning-overview/PROJECT_DASHBOARD.html` after: a new formal project; a new/updated project map; a change to owner, priority, status, next, or blocker; a change to a project's public state or page link; a project entering paused/done/archived; a key decision needing the team; or a deployment/version change. The dashboard records current state and navigation only, never a full log. Sync source Markdown or `_ai` first, then the project `PROJECT_BOARD.html`, then the dashboard if portfolio-level fields changed.

## 5. Status and evidence

Status is updated manually and must have an evidence path when a project enters `done`, `paused`, or `blocked`. Without evidence, keep `TBD`, `preparing`, `active`, or `needs review`.

## 6. Data and private-data boundaries

Global `reasoning-data` holds raw/authoritative data, inventory, access boundaries, and governance. Processed/derived data, features, and analysis-ready tables go in the owning project's `2-Data/`, recording source/version/method/QC/boundary in `DATA.md`. Never write raw sensitive records, identifiers, secrets, or private excerpts into the overview, dashboard, skills, handoffs, or project docs.

## 7. Personal pages

Team members may register personal analysis/report/demo pages on the dashboard with owner, URL, last-update, public boundary, and maintenance owner. No private data, secrets, or unapproved screenshots. If a personal project becomes formal, create a project folder and sync the dashboard.

## 8. Deployment and freshness

To view the dashboard anywhere, deploy only the public-safe static files, never the whole workspace. Use a page version `YYYY-MM-DD-vN` shown on the dashboard, and confirm the external URL matches the local build after each deploy.

## 9. Feedback

Collect feedback via the dashboard: related project, suggestion, reason, evidence/link, and whether the dashboard needs updating. Adopted feedback syncs the dashboard and the relevant project folder. Raw feedback files are never web-accessible.

## 10. AI collaboration

- Read the smallest necessary context first; when editing a project, work from that project root.
- Before creating or modifying a project, confirm the operator's Git identity (`git config user.name`, `git config user.email`); if missing, ask the user to configure their own and pause.
- Prefer concrete module language ("this is a document", "this is a small attempt for `0-Project`", "this is data information for `2-Data`", "this is project status") so AI places content in the narrowest home.
- For high-impact requests (portfolio-wide rules, data norms, raw-data write locations, public/permission boundaries, cross-project defaults), restate understanding and confirm before acting.
- Do not make broad cross-project edits by default. State affected files before automatic structure changes.
- Keep process records in project `_ai/`: plan → `task_plan.md`, discoveries → `findings.md`, actions/validation → `progress.md`.

See `GIT_WORKFLOW.md` for git identity and commit policy.

## 11. Minimum handoff

After each meaningful step, leave: current status, next step, blocker/risk, owner (or TBD), evidence path, and last-sync date.
