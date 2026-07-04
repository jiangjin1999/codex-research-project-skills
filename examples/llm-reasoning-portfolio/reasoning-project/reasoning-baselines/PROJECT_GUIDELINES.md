# Project Guidelines — reasoning-baselines

This project's local rules. Portfolio-wide rules live in the portfolio `PROJECT_GUIDELINES.md`.

## Where things go

- Goal / scope / owner / status / next / milestones → `_ai/project_overview.md`.
- Board generation rules → `_ai/project_board_spec.md`.
- Concrete attempts / experiment routes → `0-Project/<date>_<name>/` (never overview or long-term rules).
- Design / methods / comparisons → `1-Docs/` with `1-Docs/README.md` as index.
- Data notes (source/version/method/QC/boundary) → `2-Data/DATA.md`. Derived data stays here, never written back to global `reasoning-data`.
- Literature/evidence → `3-Paper_Survey/`.
- Project-local prompts/skills → `4-Skills/PROJECT_SKILLS.md`.

## Board classification (sync scale)

- Level 0 — no HTML change (typo/internal note).
- Level 1 — Markdown / `_ai` only.
- Level 2 — also update this `PROJECT_BOARD.html`.
- Level 3 — also update the portfolio dashboard (owner/priority/status/next/public state changed).

## Safety

Never put raw records, identifiers, secrets, or private excerpts into docs, board, skills, or `_ai`. Confirm Git identity before editing (see `GIT_WORKFLOW.md`).
