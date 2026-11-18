---
description: Create a task in Ambiguous and assign it to me, a teammate or an AI agent, with an optional due date and project.
argument-hint: "task; optional assignee, due date, project"
---

Create a task in the user's Ambiguous workspace with the Ambiguous connector's `create_task` tool. Follow the `ambiguous` skill's rules.

1. Read `$ARGUMENTS` (or the user's request) as: the task title (required), and optionally an assignee, a due date, a priority and a project.
2. Resolve the assignee by name with `list_users`. If more than one person matches, ask which one. If no assignee is named, assign it to the user.
3. If a project is named, use it; if it's ambiguous, ask. Otherwise create it without a project.
4. Create the task. Put any detail beyond the title in the description.
5. Confirm with the title, assignee, due date and a link to the task.

Don't invent a due date or an assignee the user didn't give.
