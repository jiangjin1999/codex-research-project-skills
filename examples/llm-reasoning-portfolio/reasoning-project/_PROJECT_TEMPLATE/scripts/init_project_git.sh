#!/usr/bin/env bash
# One-time project git hygiene check. Does not create commits.
set -euo pipefail
name="$(git config user.name || true)"
email="$(git config user.email || true)"
if [ -z "$name" ] || [ -z "$email" ]; then
  echo "Git identity is not configured. Set your own before editing:" >&2
  echo "  git config user.name \"Your name or handle\"" >&2
  echo "  git config user.email \"you@example.com\"" >&2
  exit 1
fi
echo "Git identity: $name <$email>"
echo "Reminder: stage explicit paths only; never commit data/logs/secrets."
