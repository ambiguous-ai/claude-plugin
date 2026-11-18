---
description: Send or draft an email from my Ambiguous workspace mail.
argument-hint: "to whom, and what about"
---

Send an email from the user's Ambiguous mailbox with the Ambiguous connector's `send_email` tool, or save a draft with `create_draft_email` if the user asks for a draft. Follow the `ambiguous` skill's rules.

1. From `$ARGUMENTS`, work out the recipients, subject and what to say. Resolve teammates with `list_users`; use addresses the user gives for anyone else.
2. Write the email in the user's voice: subject, a short body, and their sign-off if the conversation shows one.
3. Show the draft and send only once the user agrees. Never send to someone the user didn't name.
4. Confirm with the recipients, subject, and a link to the sent message or draft.

If sending is refused because the email needs a human's approval, say so — that's the workspace's policy, not an error.
