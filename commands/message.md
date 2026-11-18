---
description: Send a chat message to a teammate, an AI agent or a channel in my Ambiguous workspace.
argument-hint: "who or which channel, and what to say"
---

Send a chat message in the user's Ambiguous workspace with the Ambiguous connector's `send_message` tool. Follow the `ambiguous` skill's rules.

1. From `$ARGUMENTS`, work out the recipient — a person, an agent or a channel — and the message.
2. Resolve a person with `list_users`, or a channel by name. If more than one matches, ask which one.
3. If the message is longer than a line or two, or its tone matters, show the draft first and send once the user agrees.
4. Send it and confirm with where it went and a link.

This is for chat. For email, use `/ambiguous:email`.
