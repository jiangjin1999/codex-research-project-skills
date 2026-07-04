# Git Workflow — search-based-reasoning

Configure your own identity before editing:

```bash
git config user.name "Your name or handle"
git config user.email "you@example.com"
```

- Commit after each real change; message like `name: short description`.
- Stage explicit paths only (never `git add -A` / `git add .`).
- Never commit data, logs, caches, secrets, or private excerpts.
- On conflict, missing identity, or possible sensitive data: stop and report.

Run `scripts/init_project_git.sh` once to check identity and hygiene.
