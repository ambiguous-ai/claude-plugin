# Ambiguous Plugin for Claude

Work in your [Ambiguous](https://www.ambiguous.ai) workspace from Claude. Ambiguous is the
workspace built for human-AI collaboration: docs, sheets, slides, canvas, chat, mail, drive, tasks,
CRM, forms, calendar and wiki. Ambiguous Workspace is free for up to 5 teammates.

This plugin bundles:

- The **Ambiguous MCP server**, so Claude can search, read, create and update your workspace with
  your account's permissions
- The **Ambiguous skill**, which teaches Claude how to work in Ambiguous
- **Commands** for the work people ask for most: catching up, finding things, presentations, docs,
  sheets, canvases, tasks, messages, email and meetings

## MCP server

Claude connects to Ambiguous's hosted MCP server at:

```
https://app.ambiguous.ai/mcp/anthropic
```

The first time Claude uses it, you sign in to Ambiguous in your browser (OAuth). The plugin runs no
local code and connects to nothing else.

## Commands

Ask in plain words, such as "what did I miss?", "make a presentation about Q1" or "turn these notes
into tasks", and Claude picks the matching command. In Claude Code and Cowork you can also run one
directly:

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

## Install in Claude Code

```bash
claude plugin marketplace add ambiguous-ai/claude-plugin
claude plugin install ambiguous@ambiguous-ai
```

In a running session, run `/reload-plugins`. On claude.ai and in Cowork, add Ambiguous from the
directory.

## License

MIT. See [LICENSE](LICENSE).
