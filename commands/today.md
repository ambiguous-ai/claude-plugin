---
description: What's on my calendar today (or another day) in Ambiguous.
argument-hint: "[optional day, e.g. 'tomorrow' or 'Friday']"
---

List the user's meetings from their Ambiguous calendar with the Ambiguous connector's `list_calendar_events` tool. Follow the `ambiguous` skill's rules.

- Use the day in `$ARGUMENTS`, or today.
- Show each event as one line in time order: start–end in the user's time zone, title, who it's with, and a link. Mark gaps of an hour or more as free time.
- Say plainly if the day is empty.
