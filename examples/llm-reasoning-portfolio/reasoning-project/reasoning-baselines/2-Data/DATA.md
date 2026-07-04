# 2-Data — reasoning-baselines

Data notes only. Derived data stays here, never written back to global `reasoning-data`.

| Dataset | Source | Access class | Version | Method / derivation | QC state | Boundary |
| --- | --- | --- | --- | --- | --- | --- |
| GSM8K | public | Public | frozen split TBD | test split, exact-match on final number | needs split freeze | name + aggregate accuracy only |
| StrategyQA | public | Public | TBD | dev split, yes/no accuracy | needs license check | name + aggregate accuracy only |

Rules: fix the split + metric before any comparison. No raw records or per-example outputs committed (see `.gitignore`).
