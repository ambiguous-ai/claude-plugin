# Maintaining the Ambiguous Claude Code plugin

This repository is the Claude Code plugin only; it sits at the repository root and
`.claude-plugin/marketplace.json` lists it. Codex, Cursor and Grok Bot packages live in
[ambiguous-ai/plugins](https://github.com/ambiguous-ai/plugins), whose marketplace points its
Claude Code entry here.

Each kind of guidance has one source:

| Owns | Source |
| --- | --- |
| Agent operating instructions | https://www.ambiguous.ai/skill.md, copied to `skills/ambiguous/SKILL.md` by `./scripts/sync-skill.sh` |
| Plugin metadata | `.claude-plugin/plugin.json` |
| Marketplace listing | `.claude-plugin/marketplace.json` |
| MCP connection (the Anthropic directory endpoint) | `.mcp.json` |
| Installation and connection setup | `README.md` |
| Repository maintenance | This file |

Edit the operating guide in the workspace repository, never here; the sync copies it unchanged.
Skills written for Claude Code alone live under `skills/` beside it and may use any Claude Code
skill field. Commands live in `commands/`, one file each. In claude.ai chat a command loads as a
skill that Claude applies when its description fits, so write each description as the request a
person would make, name only tools the Ambiguous connector serves, and keep the shared rules in the
`ambiguous` skill rather than repeating them. Never give a command and a skill the same name; the
skill wins and the command disappears.

Keep `version` equal in `plugin.json` and the marketplace entry, and raise it with every change a
user should receive: an installed plugin stays on its version until the version changes.

Keep the marketplace `name` as `ambiguous-ai`. This repository's name redirected to
ambiguous-ai/plugins before it was split out, so installs from that time read this marketplace
under that name.

## Checks before opening a PR

```bash
./scripts/sync-skill.sh --check
claude plugin validate --strict .
git diff --check
```

CI runs the same checks. For behavior changes, exercise the affected path in a fresh Claude Code
session and report what was actually verified.
