---
description: Write something up as a document in Ambiguous — notes, a plan, a summary of this conversation, a proposal — and share it if I ask.
argument-hint: "what to write; optional title and who to share it with"
---

Write a document in the user's Ambiguous workspace with the Ambiguous connector's `create_doc` tool. Follow the `ambiguous` skill's rules.

1. Work out what to write from `$ARGUMENTS` and the conversation. If the request is "write this up", the source is the conversation so far.
2. Write it properly: a clear title, a short summary first, then sections with headings. Use Markdown for the content.
3. Create the document. If the user named people to share it with, share it with them at the role they asked for (editor if they didn't say); otherwise leave it private to them.
4. Confirm with the title, who can open it, and the link.

Don't paste the whole document back into the chat — give the link and a two-line summary.
