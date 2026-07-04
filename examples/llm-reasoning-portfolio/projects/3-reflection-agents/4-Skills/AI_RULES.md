# Project AI Rules — 3-reflection-agents

## Scope

Self-critique and revision loops (Reflexion, Self-Refine, ReAct) on shared public reasoning tasks.

## Do

- Reuse the `1-reasoning-baselines` frozen benchmark so comparisons are fair.
- Always define a no-reflection control before claiming a reflection gain.
- Record cost per retry alongside accuracy; classify notes into the matching folder.

## Don't

- Don't overclaim reflection benefits without a controlled baseline.
- Don't store raw agent transcripts or dataset rows in shared files or the board.
