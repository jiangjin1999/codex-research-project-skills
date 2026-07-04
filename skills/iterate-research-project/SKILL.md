---
name: iterate-research-project
description: Iterate one research project with evidence. Use when Codex needs to classify and place project material into subprojects/attempts, docs, data notes, literature records, local skills, or AI working memory; manage 0-Subprojects, 1-Docs, 2-Data, 3-Literature, 4-Skills, and _ai; track repeated attempts, failed paths, provenance, QC, paper evidence, decisions, status, and next actions inside a single project.
---

# Iterate Research Project

Use this skill to keep one research project honest as it changes. The main habit is: classify the work, write to the narrowest durable place, record evidence, then synchronize only the summaries that collaborators need.

## Project Contract

Use this structure unless the current project already has equivalent names:

```text
0-Subprojects/   concrete attempts, experiments, analyses, validations, demos
1-Docs/          decisions, methods, meeting notes, comparisons, design notes
2-Data/          source notes, provenance, permissions, versions, dictionaries, QC
3-Literature/    reading queue, paper summaries, evidence and method implications
4-Skills/        project-local prompts, workflows, reusable procedures
_ai/             project overview, plan, findings, progress, handoff
```

Do not put project overview or long-term rules inside `0-Subprojects/`. That directory is only for concrete attempts with their own goal, inputs, outputs, conclusion, and next action.

## Classify Before Writing

When the user gives new material, choose one landing place:

| User intent | Landing place |
| --- | --- |
| "This is a concrete experiment / attempt" | `0-Subprojects/<date>_<slug>/` |
| "This is a method note / meeting / decision / comparison" | `1-Docs/<date>_<topic>.md` and update `1-Docs/README.md` |
| "This is data information" | `2-Data/DATA.md` or a focused note under `2-Data/` |
| "This is a paper / external source / evidence" | `3-Literature/README.md` or a paper note |
| "This is a reusable workflow / prompt" | `4-Skills/` or `4-Skills/PROJECT_SKILLS.md` |
| "This changes status / next action / blocker" | `_ai/project_overview.md`, `_ai/task_plan.md`, and possibly a public-safe board |

If classification changes project scope, evaluation criteria, data boundary, public exposure, or whether an attempt belongs in the project, ask before treating it as confirmed.

## Iteration Loop

1. Restore context from `_ai/project_overview.md`, `_ai/task_plan.md`, `_ai/findings.md`, `_ai/progress.md`, and the relevant local index.
2. Name the current iteration in one sentence: question, attempt, or decision.
3. Create or update the narrowest source file first.
4. Record findings that change the project direction in `_ai/findings.md`.
5. Record actions, validation, failed paths, and handoff notes in `_ai/progress.md`.
6. Update `_ai/task_plan.md` when phase, blocker, or next action changes.
7. Update public-safe summaries only when there is a stable project-level change.

## Subproject Records

Each `0-Subprojects/<date>_<slug>/README.md` should answer:

- What question does this attempt test?
- What inputs, papers, data notes, or assumptions does it use?
- What was run or reasoned through?
- What failed, changed, or became stable?
- What is the conclusion and next action?
- Does it affect project status, data notes, literature notes, or a portfolio summary?

Record failed attempts. A failed path with a clear reason is a useful project asset.

## Data And Literature

- Use `2-Data/` for provenance, versions, allowed locations, dictionaries, QC, and derived-artifact boundaries.
- Do not write raw sensitive records, identity-bearing examples, credentials, or unreleased data excerpts into project summaries.
- Use `3-Literature/` for evidence that can change methods, evaluation, scope, or interpretation.
- Summarize papers by problem, method, data or benchmark, result, limitation, and implication for this project. Avoid large copied passages.

## References

- Read `references/project-iteration-system.md` when creating project structure, subprojects, planning files, or synchronization rules.
- Read `references/data-and-literature.md` before handling data notes, benchmark provenance, literature summaries, or evidence-to-decision updates.
