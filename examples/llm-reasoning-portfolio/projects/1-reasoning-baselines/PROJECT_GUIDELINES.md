# PROJECT_GUIDELINES

Defines the project's collaboration boundary, file organization, iteration rhythm, and done criteria. New content goes into the most matching core folder; the root keeps only entry, map, and high-level rules.

## 1. Working principles

- Every change is traceable: goal, inputs, process, output, and conclusion are recorded.
- Research judgments need evidence: a paper, data, an experiment log, or an explicit hypothesis.
- Experiments and docs evolve together: conclusions land in docs; doc gaps drive the next experiment.
- AI collaboration leaves a trace: important prompts, constraints, decisions, and open questions go to `_ai/` or `4-Skills/`.

## 2. Folder boundaries

| Folder | Put here | Do not put here |
| --- | --- | --- |
| `0-Project/` | attempts, prototypes, run results, retrospectives | general background docs, paper excerpts |
| `1-Docs/` | method docs, topic notes, process notes, reusable summaries | raw data, one-off run logs |
| `2-Data/` | data cards, schema, processing steps, derived-data records | large raw data itself |
| `3-Paper_Survey/` | paper reading, method sources, evidence matrix | unorganized scattered excerpts |
| `4-Skills/` | project-local AI rules, prompts, checklists | ordinary plans and sync logs |
| `_ai/` | plan, findings, progress, decisions | long method docs, main experiment records |

## 3. Naming

- Files: `YYYY-MM-DD_short-topic.md`.
- Attempt folders: `YYYY-MM-DD_experiment-name/`.
- Paper notes: `author-year-short-title.md`.
- Avoid `final`, `new`, `temp`.

## 4. Single iteration flow

1. Write this round's goal, background, hypothesis, and acceptance criteria in `_ai/task_plan.md`.
2. Create work files in the matching folder and link related papers, data, and attempts.
3. For runs, record inputs, environment, command, output, and metrics.
4. Promote reusable conclusions into `1-Docs/` or `4-Skills/`.
5. Write the round summary in `_ai/progress.md`: done, found, next.

## 5. Minimum experiment fields

Goal, Hypothesis, Inputs, Environment, Command, Metrics, Result, Conclusion, Next.

## 6. AI collaboration rules

- Read `README.md`, `PROJECT_GUIDELINES.md`, and the relevant folder README before editing.
- Mark uncertain facts as "assumption" or "to verify"; do not write inference as conclusion.
- Keep source links/paths when citing papers, data, or external material.
- Record cross-folder decisions in `_ai/decisions.md` (or `_ai/findings.md`).

## 7. Done criteria

A task is done when: there is a concrete output or verifiable result; key assumptions, inputs, and limits are recorded; the relevant folder README points to the new content; and the next step or open question is written in `_ai/task_plan.md`.
