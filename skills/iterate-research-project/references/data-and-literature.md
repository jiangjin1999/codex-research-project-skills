# Data And Literature

Use this reference when handling datasets, benchmarks, paper surveys, evidence summaries, and method implications.

## Data Notes

Record data and benchmark context in `2-Data/DATA.md` (one block per source, plus optional per-source cards):

| Field | Meaning |
| --- | --- |
| Source | Dataset, benchmark, API, simulation, or human-created artifact |
| Version | Release, commit, date, or snapshot |
| Access class | open, restricted, synthetic, internal, or TBD |
| Role | raw source, derived artifact, evaluation set, annotation, intermediate, or TBD |
| Allowed locations | Where files and outputs may live |
| QC state | Known checks, gaps, failures, and next checks |
| Public boundary | What can appear in public summaries and on the board |

Do not place raw sensitive records or identity-bearing examples in summaries or on the board. Use aggregated, synthetic, or public examples instead. Track cleaning and derivation steps (source → method → output → location) so the Data view stays trustworthy.

## Literature Notes

Keep literature under `3-Paper_Survey/` (a reading queue in `README.md`, one note per paper, and an `evidence-matrix.md` when several sources bear on one claim). For each paper or external source, record:

```markdown
## Paper title

Problem:

Method:

Data or benchmark:

Key finding:

Limitation:

Implication for this project:

Decision impact:
```

Prefer concise paraphrase and links. Quote only short excerpts when needed.

## Evidence-To-Decision Flow

1. Add the paper to the reading queue in `3-Paper_Survey/README.md`.
2. Summarize the paper only when it affects a method, benchmark, metric, scope, or decision.
3. Link the paper note from the relevant doc, attempt, or project overview, and record it in `3-Paper_Survey/evidence-matrix.md` if it supports or conflicts with a project claim.
4. If the paper changes the next action, update `_ai/task_plan.md`.
5. If the paper reveals a risk or open question, update `_ai/findings.md`.
6. If paper evidence changed the References or Data view, sync `PROJECT_BOARD.html` per the Sync Scale.

## LLM Reasoning Example Paper Queue

| Paper | Use in example project |
| --- | --- |
| Chain-of-Thought Prompting | Baseline prompting and trace format |
| Self-Consistency | Sampling-based aggregation attempt |
| ReAct | Reasoning plus action/tool-use framing |
| Tree of Thoughts | Search-based subproject structure |
| Reflexion | Feedback and memory iteration |
| Graph of Thoughts | Graph-structured reasoning attempts |
| Towards Large Reasoning Models | Survey context for reinforced reasoning |
| Agentic Reasoning for Large Language Models | Survey context for planning, action, and learning |
