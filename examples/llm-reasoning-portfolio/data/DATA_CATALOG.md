# Data Catalog

Shared, portfolio-level data and benchmark inventory. This example uses only public or synthetic benchmark notes.

| Source | Access class | Version | Role | QC state | Public boundary |
| --- | --- | --- | --- | --- | --- |
| GSM8K | open | TBD | arithmetic reasoning benchmark | needs split/metric check | dataset name and aggregate metrics only |
| StrategyQA | open | TBD | multi-hop reasoning benchmark | needs license check | dataset name and aggregate metrics only |
| Synthetic ablation set | synthetic | 2026-07-04 draft | controlled prompt tests | draft only | prompts may be shared after review |

Rules:

- Keep only high-level notes here (source, access class, version, role, QC, boundary). Row-level data and derived artifacts live inside the owning project's `2-Data/`.
- Do not store raw records or unreleased benchmark rows in this folder.
- Changing an access class or export boundary is a Level 3 change: confirm with the user and record it in an `_ai/` handoff.
