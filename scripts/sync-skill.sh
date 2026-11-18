#!/usr/bin/env bash
# The plugin skill is the served operating guide, https://www.ambiguous.ai/skill.md.
# Source and maintenance commands: AGENTS.md.
set -euo pipefail
cd "$(dirname "$0")/.."

SOURCE_URL="https://www.ambiguous.ai/skill.md"
TARGET="skills/ambiguous/SKILL.md"

expected=$(mktemp)
trap 'rm -f "$expected"' EXIT
curl --fail --silent --show-error --location "$SOURCE_URL" > "$expected"

if [ "${1:-}" = "--check" ]; then
  if cmp -s "$expected" "$TARGET"; then
    echo "sync-skill: OK — $TARGET matches $SOURCE_URL"
  else
    echo "sync-skill: STALE — $TARGET differs from $SOURCE_URL" >&2
    exit 1
  fi
  exit 0
fi

mkdir -p "$(dirname "$TARGET")"
cp "$expected" "$TARGET"
echo "sync-skill: wrote $TARGET"
