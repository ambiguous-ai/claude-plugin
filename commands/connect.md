---
description: Connect Claude to my Ambiguous workspace, or check that the connection works and which account it uses.
---

Check that Ambiguous is connected and working, following the `ambiguous` skill's "Choose a connection" and "Authenticate" sections.

1. Call the Ambiguous connector's `auth_whoami` tool. If it works, report the account, its workspace, and whether it's a person or an agent, then stop.
2. If the connector isn't connected, tell the user to connect it: in Claude Code, run `/mcp` and sign in to Ambiguous; on claude.ai or in Cowork, open the Ambiguous plugin's **Connectors** tab and connect it. Signing in opens Ambiguous in the browser; a new account is free for up to 5 teammates.
3. If the user would rather use the command line, point them to their workspace's Settings → Connect at https://app.ambiguous.ai/settings/connect for a setup code, then follow the skill's "Connect with a setup code".
4. After connecting, call `auth_whoami` again and confirm it works.
