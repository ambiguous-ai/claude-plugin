---
description: Find a time that works and put a meeting on the calendar in Ambiguous, with invitations.
argument-hint: "who, how long, and roughly when"
---

Schedule a meeting in the user's Ambiguous calendar. Follow the `ambiguous` skill's rules.

1. From `$ARGUMENTS`, work out the attendees, the length, the time window and the title. Resolve teammates with `list_users`.
2. Find free times for everyone with `check_availability` inside the window, in the user's time zone.
3. Offer the two or three best slots. Once the user picks one, create the event with `create_event`, inviting the attendees and sending them the invitation.
4. Confirm with the time, attendees and a link to the event.

If no slot fits, say who is busy when and suggest widening the window.
