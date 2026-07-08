# Project Guidelines — _PROJECT_TEMPLATE

This project's local rules. Portfolio-wide rules live in the portfolio `PROJECT_GUIDELINES.md`.

## Where things go

- Goal / scope / owner / status / next / milestones → `_ai/project_overview.md`.
- Board generation rules → `_ai/project_board_spec.md`.
- Concrete attempts / experiment routes → `0-Project/<date>_<name>/` (never overview or long-term rules).
- Notes that only make sense inside one attempt → `0-Project/<attempt>/docs/<date>_<topic>.md`.
- Future attempt ideas → `0-Project/_parking-lot.md` or `_ai/task_plan.md`; do not create a full attempt until the idea has criteria or a concrete next action.
- Abandoned or superseded attempts → keep evidence and stop reason; use `0-Project/_archive/` if moving them out of the active lane.
- Design / methods / comparisons / discussions that are not experiments → `1-Docs/` with `1-Docs/README.md` as index.
- Challenge review / drift / messy state → `1-Docs/<date>_challenge-review.md` plus `_ai/findings.md` and `_ai/task_plan.md`; create `0-Project/<date>_repair-<slug>/` only for a concrete repair.
- Data notes (source/version/method/QC/boundary) → `2-Data/DATA.md`. Derived data stays here, never written back to global `reasoning-data`.
- Literature/evidence → `3-Paper_Survey/`.
- Project-local prompts/skills → `4-Skills/PROJECT_SKILLS.md`.

## Board classification (sync scale)

- Level 0 — no HTML change (typo/internal note).
- Level 1 — Markdown / `_ai` only.
- Level 2 — also update this `PROJECT_BOARD.html`.
- Level 3 — also update the portfolio dashboard (owner/priority/status/next/public state changed).

## Challenge triage

Record challenges before repairs. Use this for board drift, stale public copy, dirty worktree, data-provenance gap, local-rule drift, handoff backlog, or archive residue. Each challenge note should include type, evidence, blast radius, owner/TBD, next action, safety boundary, and sync level.

## Context handoff

Before context gets long, after a small step completes, or before switching topic/subproject, write a compact handoff in the narrowest matching Markdown file. Include current goal, completed step, key decisions, evidence paths, open questions, next action, and whether board sync is needed. Handoffs are usually Level 1; raise to Level 2 only when next/status/blocker/attempt state changes.

## Safety

Never put raw records, identifiers, secrets, or private excerpts into docs, board, skills, or `_ai`. Confirm Git identity before editing (see `GIT_WORKFLOW.md`).
