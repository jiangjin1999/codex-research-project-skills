# Portfolio handoff — 2026-07-04

Cross-project AI context that should survive a single conversation. Keep it public-safe.

## Current state

- Three active/planned projects registered: `reasoning-baselines` (high, active Phase 0), `search-based-reasoning` (medium, planning), `reflection-agents` (medium, planning).
- Shared benchmarks in `reasoning-data`: GSM8K, StrategyQA, HotpotQA (public); one private synthetic ablation set.
- Dashboard `reasoning-overview/PROJECT_DASHBOARD.html` is at version `2026-07-04-v1`.

## Cross-project decisions

- Freeze one shared benchmark split + metric before any cross-project comparison, so `reasoning-baselines` and `reflection-agents` can be compared fairly. This freeze is the current blocker for `reflection-agents`.
- Priority and owner tags on the dashboard are the single source of truth for "what to do next"; keep the registry table and the dashboard in sync (Level 3).

## Next step / risk

- Next: `reasoning-baselines` freezes GSM8K split + metric and runs its first attempt in `0-Project/`.
- Risk: comparing reasoning methods across different prompt formats or metrics gives misleading gains — always fix format + metric first.

## Handoff fields

- Status: active. Next: freeze benchmark + run first baseline attempt. Blocker: none at portfolio level. Owner: TBD. Evidence: `reasoning-project/reasoning-baselines/3-Paper_Survey/evidence-matrix.md`. Last sync: 2026-07-04.
