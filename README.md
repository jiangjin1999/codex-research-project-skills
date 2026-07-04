# Codex Research Project Skills

Two Codex skills for organizing research work that grows across many projects and many iterations.

中文动机：这套 skill 来自真实多人科研协作中的组织经验，但公开版已完全抽象为通用研究项目管理方法，用大模型推理研究作为示例。

## Skills

| Skill | Use it for | Core folders |
| --- | --- | --- |
| `manage-research-portfolio` | A portfolio of many research projects, shared status, data boundaries, cross-project handoffs, and a portfolio dashboard (看板). | `<slug>-overview`, `<slug>-project`, `<slug>-data`, `<slug>-ai` |
| `iterate-research-project` | One research project that evolves through attempts, docs, data notes, papers, local workflows, AI working memory, and a project board (看板). | `0-Project`, `1-Docs`, `2-Data`, `3-Paper_Survey`, `4-Skills`, `_ai` |

The skills are instruction-first. They use `references/` for detailed patterns and avoid scripts in v1 because the work is mostly classification, judgment, and synchronization. The portfolio areas are prefixed with the portfolio's own slug (e.g. the LLM-reasoning example uses `reasoning-overview`, `reasoning-project`, `reasoning-data`, `reasoning-ai`).

**Use them together, or either one alone.** Neither skill requires the other:

- **`iterate-research-project` is fully standalone.** Point it at a single project folder anywhere and you get the full structure, board, working memory, and git policy — no portfolio, no dashboard, no registry needed. Every "portfolio dashboard" step in that skill is an *optional* integration you can ignore when running solo.
- **`manage-research-portfolio`** adds the shared dashboard, project registry, global data governance, and cross-project handoffs once you are running several projects.
- **Together they compose:** the portfolio scaffolds and syncs the single-project skill automatically; used alone, each still stands on its own.

If you only ever manage one project, install just `iterate-research-project`.

## How to use these well

These skills encode a *way of working*, not just a folder layout. The rules live in **behavior-guideline Markdown** (`PROJECT_GUIDELINES.md`, `GIT_WORKFLOW.md`, and each `SKILL.md`) that the agent reads and follows — so the system keeps itself in order as you work, and **you can extend it by adding your own guideline files**. Add a rule to a guideline file and every future action honors it.

### 1. Portfolio — create a project anywhere, let the guidelines sync it

- From **any path** in your tree, ask the agent to start a project. Guideline-driven behavior then scaffolds the templated single-project skeleton, registers the project, and updates the portfolio dashboard — you wire nothing by hand.
- As you make progress, the same guidelines keep status, next action, and the dashboard cards **in sync automatically**; progress flows *up* to the portfolio without a separate step.
- Because the behavior is just text, it composes: **multiple people in multiple roles across many projects** share one dashboard and one rule set. This is what makes continuous, multi-owner management sustainable.

### 2. Single project — the real work is small subprojects

This is the heart of the system, and it works **with or without a portfolio** — `iterate-research-project` is complete on its own. Most research iteration is five recurring kinds of work:

| Kind of work | Home | Note |
| --- | --- | --- |
| **Experiment attempts** — *the core* | `0-Project/<date>_<name>/` | each concrete thing you try = one **subproject** |
| Data | `2-Data/DATA.md` | source, version, permission, QC, derived-data boundary |
| Paper survey | `3-Paper_Survey/` | evidence and how it changes your decisions |
| Skills / local workflows | `4-Skills/` | reusable prompts, commands, procedures |
| AI records | `_ai/` | working memory: overview, board spec, plan, findings, progress |

Treat **experiment attempts as subprojects**, and be generous about creating them:

- **New idea → new subproject.** Don't overwrite or endlessly re-iterate one attempt. When you want to try something, spin up a fresh `0-Project/<date>_<name>/` and iterate there.
- **Don't fear duplication.** Parallel subprojects that reuse code or data are fine — they keep results comparable and history legible.
- **Keep each subproject small and single-purpose**, so it is easy to read, compare, and (when needed) abandon.

The payoff: iteration becomes **append-only**. You accumulate a readable trail of what you tried instead of one mutable blob — which is exactly what makes an AI collaborator (and future-you) effective.

### 3. The board is the AI–human collaboration surface

The HTML board is the best medium for short-horizon human + agent work: one always-current **map** both sides can read and refresh in seconds. Markdown and `_ai/` are the source of truth; the board is the rendered view. Keep it a **map, not a log**. See **The board (看板)** below for the exact views.

### Recommendations (opinionated)

A few habits that make the above pay off:

- **Follow the Sync Scale.** Decide each change's blast radius (L0 no HTML → L1 Markdown/`_ai` → L2 this board → L3 the portfolio dashboard) and update only what that level needs — trustworthy boards, no busywork.
- **Status must be evidence-backed.** "Working" means a run, number, or paper you can point to in the matching folder — not a feeling.
- **Give data a boundary before you touch it.** Record source, version, permission, and what may be derived or shared; never let raw sensitive data reach a board or handoff.
- **Promote a subproject when it earns it.** If an attempt grows its own data, roadmap, and audience, graduate it into a full project in the portfolio and let the dashboard pick it up.
- **Name for scanning.** `0-Project/2026-07-04_tot-depth-sweep` reads far better in six months than `exp3`.
- **Extend the rules, don't fight them.** New convention? Add a line to a guideline file; the agent follows it next run.

## The board (看板)

Both skills treat a lightweight HTML **board** as the shared, current-state map that stays in sync with the folders:

- **Portfolio dashboard** — `<slug>-overview/PROJECT_DASHBOARD.html`: a control-console page with a persistent **Portfolio Overview** (project count, dataset count, abbreviations) plus exactly three mutually-exclusive views: **Project Board** (one card per project with editable priority/owner tags, status, next action, and a link to that project's own board; the template card is pinned first), **Data Board** (two-level: Private/Public × category), and **Usage Guidelines** (the four portfolio areas, the six project folders, and behavior norms — all as folder-cards). It ships with a sanitized `public-dashboard/` copy (a landing page plus one page per project) that is the only thing you deploy publicly.
- **Project board** — `<slug>-project/<project>/PROJECT_BOARD.html`: a persistent **Back to dashboard** link (to site root `/`), a version status, an always-visible project overview, and five views — **Progress**, **Docs** (a structure tree), **Tasks** (dated attempts, collapsed), **Materials** (data notes), and **References** (evidence). Every project copies the same board shell, so all project boards are structurally identical.

The board is a **map, not a log**: update Markdown and `_ai/` first, then sync the board. Each board view maps to a folder, so a reader can move between the board and the files without surprise. A **Sync Scale** (L0 no HTML change → L1 Markdown/`_ai` only → L2 this project's board → L3 the portfolio dashboard) says when a change must reach the board, the registry, and handoffs.

## Install

Codex loads skills from `$CODEX_HOME/skills/` (defaults to `~/.codex/skills/`). Install one skill at a time. If you only manage a single project, install just `iterate-research-project` — it works entirely on its own.

**Option A — Composio skill installer** (if you already use [`awesome-codex-skills`](https://github.com/ComposioHQ/awesome-codex-skills); it ships the installer under `~/.codex/skills/.system/skill-installer/`):

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo jiangjin1999/codex-research-project-skills --path skills/manage-research-portfolio --name manage-research-portfolio
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo jiangjin1999/codex-research-project-skills --path skills/iterate-research-project --name iterate-research-project
```

**Option B — clone and copy** (always works):

```bash
git clone https://github.com/jiangjin1999/codex-research-project-skills.git
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R codex-research-project-skills/skills/manage-research-portfolio "${CODEX_HOME:-$HOME/.codex}/skills/"
cp -R codex-research-project-skills/skills/iterate-research-project "${CODEX_HOME:-$HOME/.codex}/skills/"
```

**Option C — symlink** (best if you plan to edit or `git pull` the skills; changes reflect live):

```bash
git clone https://github.com/jiangjin1999/codex-research-project-skills.git
ln -s "$PWD/codex-research-project-skills/skills/manage-research-portfolio" "${CODEX_HOME:-$HOME/.codex}/skills/manage-research-portfolio"
ln -s "$PWD/codex-research-project-skills/skills/iterate-research-project" "${CODEX_HOME:-$HOME/.codex}/skills/iterate-research-project"
```

## Quick start: how to actually use it

You do **not** search for or manually call a skill. Codex reads each skill's `SKILL.md` `description` and **auto-triggers the matching skill** when your request fits. After installing:

1. Restart Codex so it picks up the new skill metadata (`ls ~/.codex/skills` to confirm the folders are there).
2. In a session, **just describe your task** — or mention the skill by name to be explicit. Examples:
   - *"Set up a research portfolio for my LLM-reasoning projects with a dashboard."* → triggers `manage-research-portfolio`.
   - *"Start a new attempt in this project to test tree-of-thoughts search depth and update the board."* → triggers `iterate-research-project`.
   - *"Use iterate-research-project to initialize this folder as a single project."* → explicit call.
3. The skill scaffolds the folders, writes the board, and keeps Markdown / `_ai/` / board in sync as you work.

If a skill doesn't fire, make the intent obvious in your prompt or run `codex doctor`. The current Codex docs describe skills as reusable workflow folders with `SKILL.md`, optional references, scripts, and `agents/openai.yaml`: https://developers.openai.com/codex/skills

## Copy-paste prompts for your AI

Paste one of these into Codex (or any capable coding agent) to bootstrap the workflow. Fill in the `[[...]]` placeholders. The prompts name the skill so Codex auto-loads it, and inline the key rules so they still work if the skill body hasn't loaded yet.

### A) One project only (standalone `iterate-research-project`)

```text
Use the iterate-research-project skill on the current folder. This is a single, standalone
project — there is no portfolio, so skip any portfolio/dashboard/registry steps.

Project: [[one-sentence goal]]

Set it up and keep it honest as it evolves:
1. Scaffold the structure: README.md, PROJECT_GUIDELINES.md, GIT_WORKFLOW.md, PROJECT_BOARD.html,
   and folders 1-Docs/ 2-Data/ 3-Paper_Survey/ 4-Skills/ _ai/. Create 0-Project/ on the first attempt.
2. Classify before writing — put each thing in exactly one place:
   experiment attempt -> 0-Project/<YYYY-MM-DD>_<name>/ ; method/decision -> 1-Docs/ ;
   data -> 2-Data/DATA.md ; paper/evidence -> 3-Paper_Survey/ ; reusable prompt/procedure -> 4-Skills/ ;
   status/next/plan -> _ai/ working memory.
3. Iterate by SUBPROJECT: every new idea = a new 0-Project/<date>_<name>/ attempt. Don't overwrite or
   endlessly re-iterate one attempt; keep each small and single-purpose; don't fear duplication.
4. Markdown first, board second: update the source .md / _ai note, THEN sync PROJECT_BOARD.html
   (5 views: Progress, Docs, Tasks/attempts, Materials/data, References). The board is a map, not a log —
   no raw logs, private data, or absolute paths. Back link is optional when standalone.
5. Use my own git identity; stage explicit paths (never git add -A); never commit raw/derived data,
   logs, caches, or secrets.

Confirm the plan, then create the structure and the board.
```

### B) Both skills together (portfolio + projects)

```text
Use the manage-research-portfolio skill here to stand up a research portfolio, then use the
iterate-research-project skill for each project inside it.

Portfolio slug: [[short-slug, e.g. reasoning]]
Portfolio theme: [[what these projects share]]
First projects: [[project-a]], [[project-b]], [[project-c]]

Do this:
1. Create the four slug-prefixed areas: <slug>-overview/ <slug>-project/ <slug>-data/ <slug>-ai/,
   plus root PROJECT_GUIDELINES.md and GIT_WORKFLOW.md.
2. Build the portfolio dashboard <slug>-overview/PROJECT_DASHBOARD.html with a persistent overview
   (project count, dataset count, abbreviations) and three views: Project Board (one card per project
   with priority/owner/status/next + link to that project's own board; template card pinned first),
   Data Board, and Usage Guidelines. Keep a sanitized public-dashboard/ copy for anything published.
3. In <slug>-project/, add a copyable _PROJECT_TEMPLATE and scaffold each first project from it using
   iterate-research-project (README, PROJECT_GUIDELINES, PROJECT_BOARD.html, 1-Docs/ 2-Data/
   3-Paper_Survey/ 4-Skills/ _ai/; 0-Project/ appears on the first attempt).
4. Keep the whole thing in sync by the Sync Scale: L0 none -> L1 markdown/_ai only -> L2 this project's
   board -> L3 the portfolio dashboard/registry. A project can be started from any path and then
   registered + synced up automatically.
5. Public-safe only: no raw sensitive data, credentials, identity-bearing records, or absolute paths in
   any .md, HTML, public dashboard, or handoff. Use my own git identity; stage explicit paths.

Confirm the plan, then create the portfolio, the dashboard, and the first project skeletons.
```

Tip: to add just one more project to an existing portfolio later, say *"Use iterate-research-project to add a new project `[[name]]` under `<slug>-project/`, then sync its card onto the dashboard."*


## Example

See `examples/llm-reasoning-portfolio/` for a fictional portfolio around LLM reasoning, built to the exact structure the skills describe (slug = `reasoning`).

Preview it locally — serve the portfolio root so the dashboard ↔ project links resolve:

```bash
cd examples/llm-reasoning-portfolio
python3 -m http.server 8137
```

Then open:

- `http://localhost:8137/reasoning-overview/PROJECT_DASHBOARD.html` — the portfolio dashboard (three views + persistent overview).
- `http://localhost:8137/reasoning-project/reasoning-baselines/PROJECT_BOARD.html` — a project's own five-view board.
- `http://localhost:8137/reasoning-overview/public-dashboard/` — the sanitized public copy (or run its own `serve.sh`).

Layout: `reasoning-overview/` (dashboard, requirements log, template, public copy), `reasoning-project/` (registry + `_PROJECT_TEMPLATE` + three projects), `reasoning-data/` (shared data catalog), `reasoning-ai/` (cross-project handoff). It uses public papers and benchmarks only:

- Chain-of-Thought Prompting: https://arxiv.org/abs/2201.11903
- Self-Consistency: https://arxiv.org/abs/2203.11171
- ReAct: https://arxiv.org/abs/2210.03629
- Tree of Thoughts: https://arxiv.org/abs/2305.10601
- Reflexion: https://arxiv.org/abs/2303.11366
- Graph of Thoughts: https://arxiv.org/abs/2308.09687
- Self-Refine: https://arxiv.org/abs/2303.17651

## Community Discovery

Places where people currently discover or share skills:

- OpenAI Agent Skills docs: https://developers.openai.com/codex/skills
- GitHub topic `codex-skills`: https://github.com/topics/codex-skills
- Awesome Codex Skills: https://github.com/composiohq/awesome-codex-skills
- Awesome Agent Skills: https://github.com/VoltAgent/awesome-agent-skills
- Awesome Skills directory: https://www.awesomeskills.dev/en

## Safety

These skills are designed for public-safe research workflow organization. Keep raw sensitive data, credentials, identity-bearing records, and unreleased internal details out of skill files, examples, public dashboards, and cross-project handoffs.
