---
description: Go through the comments on one of my documents, presentations, sheets or wiki pages in Ambiguous, make the changes people asked for, and reply to each.
argument-hint: "the document (name or link); optional 'just reply' or 'just list them'"
---

Work through the open comments on a document in the user's Ambiguous workspace. Follow the `ambiguous` skill's rules.

1. Find the document from `$ARGUMENTS` (a link, or a name — use `search_workspace`; ask if more than one matches). With no argument, use `notifications_list` to find the user's documents with new comments and ask which one.
2. Read the open threads with `list_resource_comments`, and the document itself (`get_document`, `get_presentation`, `get_sheet` or `get_wiki_page`) so each comment is read against the passage it's anchored to.
3. Sort the threads into: a change to make, a question to answer, and anything needing the user's judgment (disagreements, decisions, anything unclear). Show that plan to the user before changing anything.
4. Once the user agrees: make each change in the document with the module's edit tool, then reply on its thread with `create_resource_comment` saying what changed. Answer questions with a reply. Resolve a thread with `update_resource_comment` (`resolved: true`) only when the change is made and the user wants threads resolved; leave the judgment calls open.
5. Report what was changed, what was answered and what is still open, with the document link.

Never edit or delete someone else's comment, and don't change parts of the document no comment asked about.
