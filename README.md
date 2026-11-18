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

Ask in plain words — "what's on my calendar today?", "catch me up", "turn
these notes into tasks". Claude picks the matching command on its own; in
Claude Code and Cowork you can also run one directly:

| Command | Does |
| --- | --- |
| `/ambiguous:catch-up` | Notifications, unread email, chat mentions, tasks due and today's meetings |
| `/ambiguous:today` | What's on your calendar today or another day |
| `/ambiguous:search` | Search docs, mail, chat, tasks, files and more |
| `/ambiguous:create-presentation` | Build a presentation you can present and edit |
| `/ambiguous:address-comments` | Work through the comments on a document and reply to each |
| `/ambiguous:create-doc` | Write something up as a document and share it |
| `/ambiguous:create-task` | Create and assign a task |
| `/ambiguous:notes-to-tasks` | Turn notes or a thread into assigned tasks |
| `/ambiguous:my-tasks` | Your open tasks: overdue, due soon, in progress |
| `/ambiguous:schedule` | Find a time and send a meeting invitation |
| `/ambiguous:message` | Send a chat message to a teammate, agent or channel |
| `/ambiguous:email` | Send or draft an email |
| `/ambiguous:create-sheet` | Put data into a spreadsheet |
| `/ambiguous:create-canvas` | Draw a flowchart, process or brainstorm on a canvas |
| `/ambiguous:connect` | Connect Ambiguous and check which account it uses |

The bundled [workspace skill](skills/ambiguous/SKILL.md) tells Claude how to
work in Ambiguous; run it directly as `/ambiguous:ambiguous`.

MIT licensed. See [LICENSE](LICENSE).
