# Metric (frozen)

- Benchmark: GSM8K test split (freeze the exact index list before running).
- Metric: exact match on the final numeric answer after CoT.
- Decoding A: greedy CoT (temperature 0).
- Decoding B: Self-Consistency — sample N chains (temperature 0.7), majority vote on final answer.
- Report: accuracy per decoding + N, plus samples-per-question as the cost axis.
