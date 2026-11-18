# Ambiguous for Claude Code

Work in your [Ambiguous](https://www.ambiguous.ai) workspace from Claude Code.
Ambiguous is the workspace built for human-AI collaboration: docs, sheets,
slides, chat, mail, drive, tasks, CRM, forms, calendar and wiki. This plugin
lets Claude read and change them on your behalf, with your account's
permissions.

Ambiguous Workspace is free for up to 5 teammates.

## Install

```bash
claude plugin marketplace add ambiguous-ai/claude-plugin
claude plugin install ambiguous@ambiguous-ai
```

In a running session, run `/reload-plugins`.

If you added the `ambiguous-ai/plugins` marketplace before, you already have
this plugin: that marketplace now installs it from here, so there is nothing
to add.

Plugins for Codex, Cursor and Grok Bot live in
[ambiguous-ai/plugins](https://github.com/ambiguous-ai/plugins).

## Set up

The plugin bundles the Ambiguous MCP connector. The first time Claude uses it,
sign in to Ambiguous in your browser. To use the `ambiguous` CLI instead, get
connection instructions from your workspace's
[Settings → Connect](https://app.ambiguous.ai/settings/connect).

## Use

Ask in plain words — "what's on my calendar today?", "summarise my unread
mail", "create a task and assign it to Dana". The bundled
[workspace skill](skills/ambiguous/SKILL.md) tells Claude how to work in
Ambiguous; run it directly as `/ambiguous:ambiguous`.

MIT licensed. See [LICENSE](LICENSE).
