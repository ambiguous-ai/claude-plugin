---
description: Search my Ambiguous workspace for anything — docs, sheets, slides, email, chat messages, tasks, files, contacts or wiki pages.
argument-hint: "what to look for"
---

Search the user's Ambiguous workspace for `$ARGUMENTS` with the Ambiguous connector's `search_workspace` tool (or `npx --yes ambiguous@latest search` if Ambiguous is connected through the CLI). Follow the `ambiguous` skill's rules.

- Treat `$ARGUMENTS` as natural language ("Q4 pricing deck", "email from Dana about the contract").
- If the request names a kind of thing (an email, a task, a doc), narrow the search to it.
- Return the best matches as a short list: title, kind, who it's from or owned by, when it changed, and a link. Prefer 5–10 relevant results over a long list.
- If nothing matches, say so and suggest different terms. An empty result is not proof the item doesn't exist — it may be shared with someone else; say that rather than claiming it's absent.
