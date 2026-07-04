# Git Workflow (reasoning portfolio)

Multiple people or AI accounts may edit the same project directory. Git configuration is both the operation-attribution source and the commit author. Every actual file change should have a commit, unless identity is missing, there is a conflict, a safety boundary is unclear, or the commit fails — then pause and report.

## Identity before edits

Before creating or modifying a project, configure your own identity in the repository:

```bash
git config user.name "Your name or handle"
git config user.email "you@example.com"
```

If either is missing, AI must remind the user to configure it and pause project creation or modification until it is set. Identity records who made a change; it is never a password, token, or key.

## Commit policy

- Commit after each actual file modification. Write a clear message, e.g. `name: short description of the change`.
- Stage explicit paths only. Never use `git add -A` or `git add .`.
- Never commit raw or derived data, run logs, pid files, caches, secrets, or private-data excerpts.
- If a path is mainly owned by someone else, note the reason and whether the owner should review.
- If `git status`, commit, or push shows conflicts, permission errors, unclear identity, or possible sensitive data, stop and report instead of forcing it.
