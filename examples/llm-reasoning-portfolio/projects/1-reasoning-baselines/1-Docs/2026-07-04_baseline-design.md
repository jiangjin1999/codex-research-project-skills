# Baseline Design

Draft plan for the CoT vs Self-Consistency comparison.

## Conditions

- C1: single Chain-of-Thought prompt, deterministic decoding.
- C2: Self-Consistency — sample k reasoning traces, majority vote on the final answer.

## Evaluation

- Metric: exact-match accuracy on the frozen benchmark subset.
- Report aggregate metrics only in public summaries; keep raw traces local.

## Open questions

- Benchmark versions/splits (GSM8K, StrategyQA) — pending freeze.
- Value of k for Self-Consistency vs cost.
