# Codex Research Project Skills

Two Codex skills for organizing research work that grows across many projects and many iterations.

中文动机：这套 skill 来自真实多人科研协作中的组织经验，但公开版已完全抽象为通用研究项目管理方法，用大模型推理研究作为示例。

## Skills

| Skill | Use it for | Core folders |
| --- | --- | --- |
| `manage-research-portfolio` | A portfolio of many research projects, shared status, data boundaries, and cross-project handoffs. | `portfolio-overview`, `portfolio-data`, `portfolio-projects`, `portfolio-ai` |
| `iterate-research-project` | One research project that evolves through subprojects, docs, data notes, literature, local workflows, and AI working memory. | `0-Subprojects`, `1-Docs`, `2-Data`, `3-Literature`, `4-Skills`, `_ai` |

The skills are instruction-first. They use `references/` for detailed patterns and avoid scripts in v1 because the work is mostly classification, judgment, and synchronization.

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

See `examples/llm-reasoning-portfolio/` for a fictional portfolio around LLM reasoning. It uses public papers and benchmarks as examples:

- Chain-of-Thought Prompting: https://arxiv.org/abs/2201.11903
- Self-Consistency: https://arxiv.org/abs/2203.11171
- ReAct: https://arxiv.org/abs/2210.03629
- Tree of Thoughts: https://arxiv.org/abs/2305.10601
- Reflexion: https://arxiv.org/abs/2303.11366
- Graph of Thoughts: https://arxiv.org/abs/2308.09687
- Towards Large Reasoning Models: https://arxiv.org/abs/2501.09686
- Agentic Reasoning for Large Language Models: https://arxiv.org/abs/2601.12538

## Community Discovery

Places where people currently discover or share skills:

- OpenAI Agent Skills docs: https://developers.openai.com/codex/skills
- GitHub topic `codex-skills`: https://github.com/topics/codex-skills
- Awesome Codex Skills: https://github.com/composiohq/awesome-codex-skills
- Awesome Agent Skills: https://github.com/VoltAgent/awesome-agent-skills
- Awesome Skills directory: https://www.awesomeskills.dev/en

## Safety

These skills are designed for public-safe research workflow organization. Keep raw sensitive data, credentials, identity-bearing records, and unreleased internal details out of skill files, examples, public dashboards, and cross-project handoffs.
