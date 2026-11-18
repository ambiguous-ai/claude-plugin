---
description: Draw it on a canvas in Ambiguous — a flowchart, a process, a product map, a swimlane, a brainstorm of sticky notes — on a board I can open and edit.
argument-hint: "what to draw; optional title and who to share it with"
---

Draw a board in the user's Ambiguous workspace with the Ambiguous connector's Canvas tools. Follow the `ambiguous` skill's rules.

1. Work out what to draw from `$ARGUMENTS` and the conversation: the steps, people or ideas, and how they connect. If it comes from a doc or email in Ambiguous, read it first.
2. Pick the form: a flowchart (shapes joined by connectors, `diamond` for decisions), a swimlane when steps belong to different people or teams, or sticky notes grouped in frames for a brainstorm.
3. Create the board with `create_canvas`, then lay everything out in one `batch_canvas_elements` call: create each element with a `temp_id`, then connectors whose `from`/`to` use those ids and anchors (`n`, `s`, `e`, `w`). Board units, origin top-left, +x right, +y down; space shapes evenly (for example 200 × 100 shapes, 80 units apart) so nothing overlaps.
4. Read it back with `get_canvas` and fix any element the batch reported as failed.
5. If the user named people, share it at the role they asked for (editor if they didn't say); otherwise leave it private to them.
6. Confirm with the board's title, a one-line description of what's on it and the link.
