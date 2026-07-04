# Operating Rules

Portfolio-level rules that every project inherits.

## Structure

- Four areas only at the root: `overview/`, `projects/`, `data/`, `_ai/`.
- `projects/` holds only the index and project subfolders. Create a new project by copying `projects/template-project/`.
- Every project uses the six core folders (`0-Project`, `1-Docs`, `2-Data`, `3-Paper_Survey`, `4-Skills`, `_ai`) and the three entry files (`README.md`, `PROJECT_GUIDELINES.md`, `PROJECT_BOARD.html`).

## Evidence and status

- A project status must be backed by an artifact, run, review, paper note, or user confirmation.
- Weak evidence → keep `preparing`, `active`, or `needs review`, never `done`.

## Sync scale (when to touch the board)

| Level | Trigger | Update |
| --- | --- | --- |
| 0 | Read-only | Nothing |
| 1 | Local project change | Project files and `_ai` only |
| 2 | Status / blocker / next action / evidence changed | Registry + `roadmap.html` Projects view |
| 3 | Roadmap phase / public view / data rule / ownership changed | Registry, `roadmap.html`, and an `_ai/` handoff |

## Safety

- No raw records, credentials, private identifiers, or absolute paths in any markdown, board, or public copy.
- Replace real internal projects with public-paper examples when sharing the workflow itself.
