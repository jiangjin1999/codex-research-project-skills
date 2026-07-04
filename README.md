# Codex Research Project Skills

Two Codex skills for organizing research work that grows across many projects and many iterations.

中文动机：这套 skill 来自真实多人科研协作中的组织经验，但公开版已完全抽象为通用研究项目管理方法，用大模型推理研究作为示例。

## Skills

| Skill | Use it for | Core folders |
| --- | --- | --- |
| `manage-research-portfolio` | A portfolio of many research projects, shared status, data boundaries, cross-project handoffs, and a portfolio board (看板). | `overview`, `projects`, `data`, `_ai` |
| `iterate-research-project` | One research project that evolves through attempts, docs, data notes, papers, local workflows, AI working memory, and a project board (看板). | `0-Project`, `1-Docs`, `2-Data`, `3-Paper_Survey`, `4-Skills`, `_ai` |

The skills are instruction-first. They use `references/` for detailed patterns and avoid scripts in v1 because the work is mostly classification, judgment, and synchronization.

## The board (看板)

Both skills treat a lightweight HTML **board** as the shared, current-state map that stays in sync with the folders:

- Portfolio board — `overview/roadmap.html`: a Roadmap plus Projects / Data / References / Skills views. Each project card links to that project's own board.
- Project board — `projects/<project>/PROJECT_BOARD.html`: an always-visible top snapshot (status, owner, recent sync, current focus) plus Progress / Docs Map / Attempts / Data / References views.

The board is a **map, not a log**: update Markdown and `_ai/` first, then sync the board. Each board view maps 1:1 to a folder, so a reader can move between the board and the files without surprise. A Sync Scale (L0 read-only → L3 phase/public/ownership change) says when a change must reach the board, the registry, and handoffs.

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

See `examples/llm-reasoning-portfolio/` for a fictional portfolio around LLM reasoning, including working portfolio and project boards you can open in a browser. It uses public papers and benchmarks as examples:

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
