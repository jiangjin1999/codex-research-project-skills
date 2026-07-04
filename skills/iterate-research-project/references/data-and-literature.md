# Data And Literature

Use this reference when handling datasets, benchmarks, paper surveys, evidence summaries, and method implications.

## Data Notes

Record data and benchmark context in `2-Data/DATA.md`:

| Field | Meaning |
| --- | --- |
| Source | Dataset, benchmark, API, simulation, or human-created artifact |
| Access class | open, restricted, synthetic, internal, or TBD |
| Version | Release, commit, date, or snapshot |
| Role | raw source, derived artifact, evaluation set, annotation, intermediate, or TBD |
| Allowed locations | Where files and outputs may live |
| QC state | Known checks, gaps, failures, and next checks |
| Public boundary | What can appear in public summaries |

Do not place raw sensitive records or identity-bearing examples in summaries. Use aggregated, synthetic, or public examples instead.

## Literature Notes

For each paper or external source, record:

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

1. Add the paper to the reading queue.
2. Summarize the paper only when it affects a method, benchmark, metric, scope, or decision.
3. Link the paper note from the relevant doc, subproject, or project overview.
4. If the paper changes the next action, update `_ai/task_plan.md`.
5. If the paper reveals a risk or open question, update `_ai/findings.md`.

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
