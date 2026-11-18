---
description: Put data into a spreadsheet in Ambiguous — a table from this conversation, a list, a tracker, a budget — with real columns and formulas I can sort and edit.
argument-hint: "what goes in it; optional title and who to share it with"
---

Create a spreadsheet in the user's Ambiguous workspace with the Ambiguous connector's `create_sheet` tool. Follow the `ambiguous` skill's rules.

1. Work out the data from `$ARGUMENTS` and the conversation (a table, a pasted list, a file's contents, or something to set up like a tracker or budget). If it comes from a doc, email or another sheet in Ambiguous, read it first.
2. Design the columns: a clear header for each, a type that fits (`text`, `number`, `currency`, `date`, `boolean`), one row per record. Use formulas (strings starting with `=`) for totals and anything derived, rather than typing computed numbers.
3. Create it in one call: `create_sheet` with a title and `content` as `{ sheets: [{ name, columns: [{ id, name, type }], rows: [{ "<column id>": value }] }] }`. For large data, create it with the first rows and add the rest with `append_sheet_values`.
4. Read back a range with `get_sheet_range` to check formulas computed, and fix anything showing an error.
5. If the user named people, share it at the role they asked for (editor if they didn't say); otherwise leave it private to them.
6. Confirm with the title, the columns, the row count and the link.

Don't invent data the user didn't give; leave cells empty instead.
