---
description: Turn meeting notes, a thread or this conversation into tasks in Ambiguous, each with an owner and due date.
argument-hint: "[the notes, or where they are]"
---

Turn notes into tasks in the user's Ambiguous workspace. Follow the `ambiguous` skill's rules.

1. Find the notes: `$ARGUMENTS`, text the user pasted, a doc or email they point to (read it), or the conversation so far.
2. Pull out the action items — things someone committed to do. Leave out discussion and ideas nobody took on.
3. For each, work out the owner and due date only from what the notes say. Resolve names with `list_users`; leave an item unassigned rather than guessing.
4. Show the list to the user before creating anything: title, owner, due date. Create them once the user confirms, with `create_task`, adding a line in each description saying where it came from (and a link if the notes are in Ambiguous).
5. Confirm with the created tasks and their links, and list anything left unassigned.
