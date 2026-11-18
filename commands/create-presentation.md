---
description: Make a presentation in Ambiguous — a pitch, a review, a plan, a summary of this conversation — with real slides I can open, present and edit.
argument-hint: "what it's about; optional audience, length and who to share it with"
---

Build a presentation in the user's Ambiguous workspace with the Ambiguous connector's Slides tools. Follow the `ambiguous` skill's rules.

1. Work out the story from `$ARGUMENTS` and the conversation: audience, the one point it has to land, and roughly how many slides (default 6–10). If the source is a doc, email or sheet in Ambiguous, read it first. Ask only if the topic itself is unclear.
2. Outline it slide by slide — a title slide, one idea per slide, a closing slide with the ask or next steps — before building.
3. Create it with `create_presentation`, passing the slides in `content` so the whole deck lands in one call. A slide is 960 × 540 with the origin top-left: keep titles near the top, body text at 20–28 pt, a few short bullets at most, and use charts or tables where there are numbers. Put talking points in each slide's `notes`.
4. Check the result: read it back with `get_presentation`, and look at `get_slide_thumbnail` for any slide with a lot on it. Fix overflow or overlap with `update_slide` before reporting.
5. If the user named people, share it at the role they asked for (editor if they didn't say); otherwise leave it private to them.
6. Confirm with the title, the number of slides, a one-line outline and the link.

Don't paste the slide contents back into the chat.
