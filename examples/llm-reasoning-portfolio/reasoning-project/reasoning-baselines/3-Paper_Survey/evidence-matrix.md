# Evidence Matrix — reasoning-baselines

| Claim | Source (public) | Evidence | Effect on this project |
| --- | --- | --- | --- |
| Chain-of-Thought prompting elicits multi-step reasoning and improves accuracy on math word problems | Wei et al. 2022, "Chain-of-Thought Prompting Elicits Reasoning in Large Language Models" | Large gains on GSM8K vs direct answering | Use CoT as the baseline decoding, not direct answering |
| Sampling multiple chains and taking a majority vote (Self-Consistency) beats greedy CoT | Wang et al. 2022, "Self-Consistency Improves Chain of Thought Reasoning" | Consistent accuracy gains across reasoning benchmarks | Implement Self-Consistency as the main comparison; sweep sample count |
| Gains must be read against sampling cost | Wang et al. 2022 | Accuracy rises with samples but with diminishing returns | Report accuracy vs sample-count cost, not accuracy alone |
