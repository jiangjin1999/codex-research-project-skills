# How to start a project

1. Confirm your Git identity (`git config user.name`, `git config user.email`).
2. Copy the skeleton: `cp -R _PROJECT_TEMPLATE reasoning-project/<project-name>`.
3. Fill `_ai/project_overview.md` (question, scope, owner, priority, next step, whether it touches private data).
4. Add the project as a card row in `reasoning-project/README.md`.
5. Sync `reasoning-overview/PROJECT_DASHBOARD.html` (Level 3): a new Project Board card and a project-page link.
6. Initialize the project map `PROJECT_BOARD.html` and its public copy under `reasoning-overview/public-dashboard/projects/<slug>/`.

The canonical skeleton and its rules are described in `reasoning-overview/PROJECT_TEMPLATE.md`.
