# Evidence Matrix — reflection-agents

| Claim | Source (public) | Evidence | Effect on this project |
| --- | --- | --- | --- |
| Interleaving reasoning traces with actions (tool calls) improves QA and reduces hallucination | Yao et al. 2022, "ReAct: Synergizing Reasoning and Acting" | Gains on HotpotQA / decision tasks | Use ReAct as the tool-use reasoning baseline on HotpotQA |
| Verbal self-reflection on failed attempts, stored in memory, improves later attempts | Shinn et al. 2023, "Reflexion" | Gains on reasoning/decision benchmarks across retries | Implement a retry-with-reflection loop; cap retries |
| Iterative self-critique and revision (Self-Refine) can improve a single output without extra training | Madaan et al. 2023, "Self-Refine" | Quality gains via feedback-then-revise | Add a with/without-refine comparison; watch for cases where it hurts |
