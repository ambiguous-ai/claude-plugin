---
description: Show my open tasks in Ambiguous — what's overdue, due soon, and in progress.
argument-hint: "[optional filter, e.g. 'this week' or a project name]"
---

List the user's open tasks from Ambiguous with the Ambiguous connector's `list_tasks` tool, filtered to tasks assigned to them. Follow the `ambiguous` skill's rules.

- Apply `$ARGUMENTS` as a filter if given (a time window, a project, a status).
- Group the result: **Overdue**, **Due this week**, **In progress**, **Other open**. Within each group, earliest due date first.
- Show each task as one line: title, project, due date, status, link.
- End with a count. If there are none, say so plainly.
