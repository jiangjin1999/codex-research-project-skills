# Evidence Matrix — search-based-reasoning

| Claim | Source (public) | Evidence | Effect on this project |
| --- | --- | --- | --- |
| Exploring a tree of intermediate "thoughts" with lookahead/backtracking beats linear CoT on search-heavy tasks | Yao et al. 2023, "Tree of Thoughts" | Large gains on Game of 24 vs CoT | Use ToT as the primary search baseline; pick a search-friendly task |
| Modeling thoughts as a graph (merging/aggregating partial solutions) can improve quality/cost over a pure tree | Besta et al. 2023, "Graph of Thoughts" | Better quality-per-cost on some tasks | Compare GoT against ToT on the same task and log compute |
| Search gains come with real compute overhead | Yao et al. 2023; Besta et al. 2023 | More node expansions per question | Always report accuracy against nodes expanded |
