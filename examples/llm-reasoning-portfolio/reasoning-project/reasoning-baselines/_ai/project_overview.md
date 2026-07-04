# project_overview — reasoning-baselines

- **Question:** On public reasoning tasks, how much does Self-Consistency (sampling + majority vote) improve over greedy Chain-of-Thought, and at what sampling cost?
- **Scope:** In — CoT prompting, Self-Consistency decoding, GSM8K and StrategyQA, accuracy + cost. Out — training/fine-tuning, private data, closed benchmarks.
- **Owner:** TBD.
- **Priority:** high.
- **Status:** active (Phase 0 — freezing benchmark + metric).
- **Next action:** Freeze the GSM8K split + exact-match metric, then run the first CoT vs Self-Consistency attempt.
- **Touches private data?** No — public benchmarks only.
- **Milestones:** (1) benchmark+metric frozen; (2) CoT baseline; (3) Self-Consistency sweep over sample count; (4) accuracy/cost trade-off note.
