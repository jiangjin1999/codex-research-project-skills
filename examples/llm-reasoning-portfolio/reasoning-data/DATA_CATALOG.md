# reasoning-data — Data Catalog

Portfolio-level data and benchmark inventory. Global/raw/authoritative data and its governance live here. Project-derived data does **not** get written back here — it stays in the owning project's `2-Data/`. This public example uses only open benchmarks or synthetic notes.

## Inventory

| Source | Access class | Category | Version | Role | QC state | Public boundary |
| --- | --- | --- | --- | --- | --- | --- |
| GSM8K | Public | Arithmetic reasoning | TBD | grade-school math word problems | needs split/metric check | dataset name + aggregate metrics only |
| StrategyQA | Public | Multi-hop reasoning | TBD | implicit multi-step questions | needs license check | dataset name + aggregate metrics only |
| HotpotQA | Public | Multi-hop QA | TBD | retrieval + reasoning QA | needs split check | dataset name + aggregate metrics only |
| Synthetic ablation set | Private | Controlled prompts | 2026-07-04 draft | controlled prompt/format tests | draft only | prompts shareable after review |

Rules:

- Keep only high-level notes here (source, access class, category, version, role, QC, boundary). Row-level data and derived artifacts live inside the owning project's `2-Data/`.
- Do not store raw records or unreleased benchmark rows in this folder.
- Changing an access class or export boundary is a Level 3 change: confirm with the user and record it in a `reasoning-ai/` handoff.
- The dashboard Data Board groups these rows first by access class (Private / Public), then by category.
