# Evidence Matrix

| Question / Claim | Supporting evidence | Conflicting evidence | Confidence | Action |
| --- | --- | --- | --- | --- |
| Sampling + aggregation beats single CoT on multi-step tasks | Self-Consistency paper; CoT paper baseline | cost grows with k; gains vary by task | medium | validate on frozen GSM8K subset |
| A small frozen benchmark set is enough for a first signal | common practice in the cited papers | small sets add variance | low | freeze versions, report with variance |
