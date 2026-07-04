---
name: manage-research-portfolio
description: Manage a multi-project research portfolio. Use when Codex needs to create, review, update, or synchronize a portfolio-level research workspace with project registry, status evidence, owner/priority/next-action fields, shared data-boundary notes, cross-project AI handoffs, public-safe dashboard summaries, or reusable research operating rules across portfolio-overview, portfolio-data, portfolio-projects, and portfolio-ai.
---

# Manage Research Portfolio

Use this skill to keep a research portfolio readable, current, and safe across many active projects. The portfolio should answer: what projects exist, who owns them, what is current, what is blocked, what evidence supports the status, and where project-level work should continue.

## Core Contract

Use four top-level areas unless the user's workspace already has equivalent names:

```text
portfolio-overview/   shared entry, registry, dashboard, operating rules
portfolio-data/       data inventory, access boundaries, dataset notes, governance
portfolio-projects/   one folder per research project
portfolio-ai/         cross-project AI handoffs and durable context
```

Keep portfolio state compact. Detailed experiments, notes, data dictionaries, and paper reading records belong inside the relevant project, not in the portfolio overview.

## Start Workflow

1. Identify the scope: portfolio-wide, shared data boundary, cross-project handoff, one project card, or reusable rule.
2. Read the smallest useful context: `portfolio-overview/README.md`, the project registry, and any recent `portfolio-ai/` handoff related to the request.
3. If a concrete project is involved, switch attention to `portfolio-projects/<project>/` and use a single-project workflow skill if available.
4. Classify the requested change before editing: new project intake, status sync, data-boundary note, public dashboard update, handoff, or portfolio rule.
5. Update the narrowest durable source first, then synchronize outward only if status, owner, priority, next action, blocker, evidence, or public state changed.

## Portfolio Registry

Represent each project with these fields:

| Field | Meaning |
| --- | --- |
| Project | Stable folder name or short name |
| Goal | Question, deliverable, or decision the project owns |
| Priority | `TBD`, `low`, `medium`, `high`, or a local equivalent |
| Owner | Accountable person or `TBD` |
| Status | `proposed`, `preparing`, `active`, `blocked`, `paused`, `done`, or `archived` |
| Next action | One concrete next step |
| Blocker | Missing data, method, compute, review, decision, or `none` |
| Evidence | File, report, run log, review, paper note, or user confirmation |
| Last sync | Date of latest meaningful update |

Do not mark work done without evidence. If evidence is missing, keep the status as `TBD`, `preparing`, `active`, or `needs review`.

## Data And Publication Boundaries

- Keep portfolio-level data notes high level: source, access class, version, permitted uses, export boundary, QC state, and owner.
- Put project-derived artifacts under the relevant project unless the user explicitly defines a shared data product.
- Never publish raw sensitive records, credentials, unreleased internal decisions, or identity-bearing examples in skill files, public dashboards, or handoffs.
- Before changing data storage defaults, public exposure rules, ownership, or permission boundaries, ask the user to confirm the scope and exception policy.

## Handoff Rules

Use `portfolio-ai/<date>_<topic>.md` for cross-project AI context that should survive a thread. A useful handoff contains:

- current portfolio state in 3-7 bullets;
- changed files or sources of truth;
- open decisions and who should decide;
- stale assumptions to re-check;
- next recommended action.

Avoid dumping command logs into handoffs. Keep execution detail in project-local progress files.

## References

- Read `references/portfolio-system.md` when creating or reorganizing portfolio folders, project registry fields, dashboard summaries, or handoff files.
- Read `references/public-sharing.md` before preparing a public-facing dashboard, repository, example, or community post.
