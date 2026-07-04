# Public Sharing

Use this reference before turning portfolio material into a public repository, dashboard, community post, or example.

## Public-Safe Checklist

- Remove source-domain names, server paths, screenshots, raw records, credentials, access tokens, and identity-bearing examples.
- Replace real projects with fictional or public-paper examples when sharing the workflow itself.
- Use public papers, open benchmarks, or synthetic data notes as examples.
- Link to original public sources instead of copying long passages.
- Keep internal decisions and team discussion out of examples unless explicitly cleared.

## Community Package Shape

A useful public skill repository usually includes:

- root `README.md` with purpose, install instructions, examples, and discovery links;
- `LICENSE`;
- `skills/<skill-name>/SKILL.md`;
- `skills/<skill-name>/agents/openai.yaml`;
- `skills/<skill-name>/references/*.md`;
- small example workspaces outside the skill folders, including a `PROJECT_BOARD.html` and a portfolio board so people can see the board (看板) the skills describe.

Avoid README-like files inside individual skill folders unless the skill standard requires them. Keep skill folders focused on agent-useful instructions.

## Suggested Discovery Channels

- GitHub topics such as `codex-skills`, `agent-skills`, `research`, and `project-management`.
- Awesome lists that accept external skill repositories.
- OpenAI community channels for feedback after the GitHub repository is stable.

## Public Summary Pattern

Public portfolio summaries should answer:

- What problem does this workflow solve?
- What are the folders and responsibilities?
- What examples can people try immediately?
- What data or source boundaries should they respect?
- How should they install, copy, or adapt the skill?
