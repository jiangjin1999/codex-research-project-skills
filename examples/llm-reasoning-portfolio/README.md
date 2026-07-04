# LLM Reasoning Portfolio (example)

A fictional, public-safe portfolio that shows the two skills working together. It uses only public LLM-reasoning papers and open benchmarks — no private or domain-internal content.

```text
llm-reasoning-portfolio/
├── overview/            shared entry, registry, operating rules, portfolio board (roadmap.html)
├── projects/            project index + template-project + one folder per project
│   ├── 1-reasoning-baselines/     (mature project: five-view PROJECT_BOARD.html)
│   ├── 2-search-based-reasoning/  (lighter project: template board)
│   ├── 3-reflection-agents/       (lighter project: template board)
│   └── template-project/        (copy this to start a new project)
├── data/                shared benchmark/data catalog and boundaries
└── _ai/                 cross-project AI handoffs
```

## How the two skills map here

- Use `$manage-research-portfolio` at this root for the registry, `overview/roadmap.html` (the portfolio 看板), shared data notes, and handoffs.
- Use `$iterate-research-project` inside any `projects/<project>/` for attempts, docs, data, literature, `_ai` working memory, and that project's `PROJECT_BOARD.html`.

## The board (看板) in this example

Two board levels, each coordinated with the folders:

- Portfolio board: `overview/roadmap.html` — Roadmap + Projects/Data/References/Skills views. Each project card links to that project's own board.
- Project board: `projects/<project>/PROJECT_BOARD.html` — top snapshot + Progress/Docs Map/Attempts/Data/References views.

Open the HTML files in a browser. They are self-contained (inline CSS/JS), public-safe, and switch views without a server.

## Example papers (public)

Chain-of-Thought (https://arxiv.org/abs/2201.11903), Self-Consistency (https://arxiv.org/abs/2203.11171), ReAct (https://arxiv.org/abs/2210.03629), Tree of Thoughts (https://arxiv.org/abs/2305.10601), Reflexion (https://arxiv.org/abs/2303.11366), Graph of Thoughts (https://arxiv.org/abs/2308.09687).
