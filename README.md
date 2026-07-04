# Codex Research Project Skills

Two Codex skills for organizing research work that grows across many projects and many iterations.

中文动机：这套 skill 来自真实多人科研协作中的组织经验，但公开版已完全抽象为通用研究项目管理方法，用大模型推理研究作为示例。

## Skills

| Skill | Use it for | Core folders |
| --- | --- | --- |
| `manage-research-portfolio` | A portfolio of many research projects, shared status, data boundaries, cross-project handoffs, and a portfolio dashboard (看板). | `<slug>-overview`, `<slug>-project`, `<slug>-data`, `<slug>-ai` |
| `iterate-research-project` | One research project that evolves through attempts, docs, data notes, papers, local workflows, AI working memory, and a project board (看板). | `0-Project`, `1-Docs`, `2-Data`, `3-Paper_Survey`, `4-Skills`, `_ai` |

The skills are instruction-first. They use `references/` for detailed patterns and avoid scripts in v1 because the work is mostly classification, judgment, and synchronization. The portfolio areas are prefixed with the portfolio's own slug (e.g. the LLM-reasoning example uses `reasoning-overview`, `reasoning-project`, `reasoning-data`, `reasoning-ai`).

## The board (看板)

Both skills treat a lightweight HTML **board** as the shared, current-state map that stays in sync with the folders:

- **Portfolio dashboard** — `<slug>-overview/PROJECT_DASHBOARD.html`: a control-console page with a persistent **Portfolio Overview** (project count, dataset count, abbreviations) plus exactly three mutually-exclusive views: **Project Board** (one card per project with editable priority/owner tags, status, next action, and a link to that project's own board; the template card is pinned first), **Data Board** (two-level: Private/Public × category), and **Usage Guidelines** (the four portfolio areas, the six project folders, and behavior norms — all as folder-cards). It ships with a sanitized `public-dashboard/` copy (a landing page plus one page per project) that is the only thing you deploy publicly.
- **Project board** — `<slug>-project/<project>/PROJECT_BOARD.html`: a persistent **Back to dashboard** link (to site root `/`), a version status, an always-visible project overview, and five views — **Progress**, **Docs** (a structure tree), **Tasks** (dated attempts, collapsed), **Materials** (data notes), and **References** (evidence). Every project copies the same board shell, so all project boards are structurally identical.

The board is a **map, not a log**: update Markdown and `_ai/` first, then sync the board. Each board view maps to a folder, so a reader can move between the board and the files without surprise. A **Sync Scale** (L0 no HTML change → L1 Markdown/`_ai` only → L2 this project's board → L3 the portfolio dashboard) says when a change must reach the board, the registry, and handoffs.

## Install

If your Codex environment provides a GitHub skill installer, install one skill at a time:

```bash
install-skill-from-github.py --repo jiangjin1999/codex-research-project-skills --path skills/manage-research-portfolio --name manage-research-portfolio
install-skill-from-github.py --repo jiangjin1999/codex-research-project-skills --path skills/iterate-research-project --name iterate-research-project
```

Manual fallback:

```bash
mkdir -p "$HOME/.agents/skills"
git clone https://github.com/jiangjin1999/codex-research-project-skills.git
cp -R codex-research-project-skills/skills/manage-research-portfolio "$HOME/.agents/skills/"
cp -R codex-research-project-skills/skills/iterate-research-project "$HOME/.agents/skills/"
```

Restart Codex if newly installed skills do not appear. The current Codex docs describe skills as reusable workflow folders with `SKILL.md`, optional references, scripts, and `agents/openai.yaml`: https://developers.openai.com/codex/skills

## Example

See `examples/llm-reasoning-portfolio/` for a fictional portfolio around LLM reasoning, built to the exact structure the skills describe (slug = `reasoning`). Open the boards in a browser:

- `reasoning-overview/PROJECT_DASHBOARD.html` — the portfolio dashboard (three views + persistent overview).
- `reasoning-project/<project>/PROJECT_BOARD.html` — each project's own five-view board.
- `reasoning-overview/public-dashboard/` — the sanitized public copy (run `serve.sh` to preview).

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
