# Dashboard Deployment

How the portfolio dashboard is published. **Only the public-safe static copy is ever deployed** — never the whole workspace.

## What gets deployed

Deploy only `reasoning-overview/public-dashboard/`:

- `index.html` — the public landing (Project Board cards linking to per-project pages).
- `projects/<slug>/index.html` — one sanitized page per project.
- `_state/dashboard-state.json` — the persisted, public-safe board state (per-project priority/owner overrides and the page version). The dashboard reads it on load and falls back to defaults if absent.

Never deploy: raw data, `_ai/` working memory, run logs, pid files, backups, or anything under `reasoning-project/*/2-Data/`.

## Serve locally

```bash
cd reasoning-overview/public-dashboard
./serve.sh 8080   # serves ONLY this folder
```

## Freshness

- The page shows a version `YYYY-MM-DD-vN`. Bump it whenever a portfolio-level field changes (Level 3).
- After each deploy, confirm the external URL matches the local build (same version string).

## State persistence

In the real system a small private server writes `_state/dashboard-state.json` when someone edits a priority/owner tag. In this public example the same shape is shipped as a static sample and the front-end also mirrors edits into `localStorage`, so the demo needs no backend.
