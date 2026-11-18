---
description: Catch me up on what needs my attention at work — unread email, chat messages and mentions, comments on my documents, notifications, tasks assigned to me, and today's meetings — from my Ambiguous workspace.
argument-hint: "[optional focus, e.g. 'just email' or 'since yesterday']"
---

Catch the user up from their Ambiguous workspace, using the Ambiguous connector's tools (or the `ambiguous` CLI if that is how Ambiguous is connected). Follow the `ambiguous` skill's rules for identity and access.

Use `$ARGUMENTS` to narrow the focus if given; otherwise cover everything:

1. Notifications: `notifications_list` with `unread_only` — mentions, comments and replies on the user's documents, shares, assignments.
2. Unread email: `list_inbox` (unread first).
3. Chat: `chat_mentions_inbox` and `get_unread_counts` for unread channels and direct messages.
4. Tasks assigned to the user that are open, due soon or overdue: `list_tasks`.
5. Today's calendar: `list_calendar_events` for today.

Return a short briefing, most urgent first:

- **Needs a reply** — who, what about, one line each, with a link. Include comments and mentions that ask the user something.
- **Due soon** — tasks with due dates.
- **Today** — meetings with times.
- Everything else as a one-line count.

Reading things here doesn't mark them read; leave them unread. Don't paste raw JSON or whole message bodies. If something can't be read (no access, not connected), say which part is missing rather than skipping it silently.
