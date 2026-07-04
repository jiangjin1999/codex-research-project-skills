#!/usr/bin/env bash
# Serve ONLY this public-safe folder. Never serve the whole workspace.
set -euo pipefail
cd "$(dirname "$0")"
PORT="${1:-8080}"
echo "Serving public dashboard at http://localhost:$PORT  (public-safe files only)"
python3 -m http.server "$PORT"
