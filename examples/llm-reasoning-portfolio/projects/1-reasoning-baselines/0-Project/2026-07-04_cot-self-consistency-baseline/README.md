# CoT vs Self-Consistency Baseline

## Metadata

- Experiment: cot-self-consistency-baseline
- Date: 2026-07-04
- Owner: TBD
- Status: planned
- Related plan: `../../_ai/task_plan.md`
- Related data: `../../2-Data/gsm8k-card.md`
- Related papers: CoT (https://arxiv.org/abs/2201.11903), Self-Consistency (https://arxiv.org/abs/2203.11171)

## Goal

Does sampling several reasoning traces and aggregating answers (Self-Consistency) beat a single Chain-of-Thought prompt on selected public tasks?

## Hypothesis

Self-Consistency raises accuracy on multi-step arithmetic/commonsense tasks at the cost of more samples.

## Inputs

- Dataset: GSM8K, StrategyQA (versions TBD — blocked)
- Config: one deterministic CoT condition; one Self-Consistency condition (k samples, majority vote)
- Seed: TBD

## Environment

- Runtime: TBD

## Command

```bash
# reproducible run command — TBD after benchmark freeze
```

## Metrics

| Metric | Definition | Target / Baseline | Result |
| --- | --- | --- | --- |
| exact-match accuracy | fraction of correct final answers | CoT single-sample | TBD |
| samples / question | cost of aggregation | 1 (CoT) | TBD |

## Failed paths

- None yet.

## Conclusion

TBD — keep benchmark rows and model outputs out of public summaries until the sharing boundary is reviewed.

## Next

Confirm benchmark versions and metric, then run both conditions.
