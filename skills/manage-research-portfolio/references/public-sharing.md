# Public Sharing And The Public Dashboard

Read this before turning portfolio material into a published dashboard, a public repository, a community post, or an example. Publishing a research portfolio has two layers: a **published dashboard copy** (for collaborators to browse) and **sharing the workflow itself** (for the community).

## The Published Dashboard (public-dashboard/)

The dashboard is published from a sanitized copy, not from the live workspace.

- Keep a `<slug>-overview/public-dashboard/` directory holding only public-safe files: `index.html`, `PROJECT_DASHBOARD.html`, and `projects/<project-slug>/index.html` for each project's public page.
- Publish only reviewed static HTML and the minimal state API. Never expose Markdown sources, scripts, logs, pid files, raw feedback files, caches, or any private data as reachable pages.
- Never deploy the entire workspace. The live `<slug>-project/`, `<slug>-data/`, and `_ai/` areas stay private.
- Each project's public page must keep the persistent `Back to dashboard` link and show only high-level, public-safe summaries; unconfirmed facts stay `TBD`.
- Use a page version `YYYY-MM-DD-vN` and a freshness/refresh indicator so viewers can tell if they have the latest build.
- When a dashboard change ships, mirror it in the dashboard requirements log and re-publish the copy.

## Public-Safe Checklist

- Remove source-domain names, server paths, screenshots, raw records, credentials, access tokens, and identity-bearing examples.
- Replace real projects with fictional or public-paper examples when sharing the workflow itself.
- Use public papers, open benchmarks, or synthetic data notes as examples.
- Link to original public sources instead of copying long passages.
- Keep internal decisions and team discussion out of public copies unless explicitly cleared.

## Community Package Shape

A public skill repository that teaches this workflow usually includes:

- root `README.md` with purpose, install instructions, examples, and discovery links;
- `LICENSE`;
- `skills/<skill-name>/SKILL.md`, `skills/<skill-name>/agents/openai.yaml`, `skills/<skill-name>/references/*.md`;
- a small example workspace outside the skill folders that instantiates the prefixed areas and includes a working `PROJECT_DASHBOARD.html` and at least one `PROJECT_BOARD.html`, so people can see the boards (看板) the skills describe.

Avoid README/CHANGELOG-like files inside individual skill folders unless the skill standard requires them. Keep skill folders focused on agent-useful instructions.

## Suggested Discovery Channels

- GitHub topics such as `codex-skills`, `agent-skills`, `research`, and `project-management`.
- Awesome lists that accept external skill repositories.
- Community forums and channels for feedback once the GitHub repository is stable.

## Public Summary Pattern

Public portfolio summaries should answer: what problem the workflow solves; what the folders and responsibilities are; what examples people can try immediately; what data or source boundaries to respect; and how to install, copy, or adapt the skills.
