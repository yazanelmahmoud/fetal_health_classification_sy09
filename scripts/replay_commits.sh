#!/usr/bin/env bash
set -euo pipefail

CSV_PATH="${1:-scripts/milestones-2025-jan-jun.csv}"

# Configure your identity (must match a verified GitHub email for contributions)
git config user.name  "<yazanelmahmoud>"
git config user.email "<yaz.mahmou@gmail.com>"

# Ensure repo is initialized and main exists
git rev-parse --git-dir >/dev/null 2>&1 || { git init; }
git branch -M main || true

# Optional: install nbstripout locally to keep notebooks clean
if command -v nbstripout >/dev/null 2>&1; then
  nbstripout --install || true
fi

# Replay commits
while IFS=, read -r when msg; do
  [[ -z "$when" || "$when" =~ ^# ]] && continue
  git add -A
  GIT_AUTHOR_DATE="$when" GIT_COMMITTER_DATE="$when" git commit -m "$msg"
done < "$CSV_PATH"

echo "Done. Set remote and push when ready."
