---
name: supercomputing-event-creation
description: Create or update a Jekyll event page for SC or another supercomputing conference from a response spreadsheet and official program pages. Use when building an event listing from submitted activities, reconciling program entries, and preserving an existing site's event conventions.
metadata:
  short-description: Build conference event pages from submissions
---

# Supercomputing event creation

Create a reviewable Jekyll event page from conference activity submissions. Follow the target repository's event conventions and the user's source-of-truth choices.

## Workflow

1. Inspect repository instructions, the event collection configuration, a recent comparable event file, and the event layout. Reuse the established front matter, table structure, date formatting, and naming convention. Do not assume a prior conference's metadata, dates, location, or registration links still apply.
2. Read the workbook's headers and rows. Map the program URL, event URL, event type, member organizations, event title, weekday/time columns, and booth/location fields by header name rather than hardcoded column positions. The response timestamp is not an event date.
3. For program entries, open the supplied program URL. Use the page to establish the listed title, event type, date, and start/end time. A presentation URL can describe a paper inside a workshop; classify the submitted activity itself, not just the parent session. Use the parent session page only to corroborate context or recover schedule details. Do not substitute the workshop title or full workshop duration for a paper's title or presentation slot.
4. If an official page cannot be retrieved or does not expose a needed field, search the session schedule or another official program page. If the detail still cannot be established, preserve the entry with only supported information and ask the user for the missing fact; do not invent a plausible title, date, time, or type.
5. For Exhibit Hall submissions, build the entry from the spreadsheet. Use the weekday-specific time field, event title, booth name, booth number, and location within booth. Link the title only when an Event URL is supplied. Place location, booth name, and booth number in parentheses after the title, following examples in the target site's prior event page.
6. Sort every row by actual event date and start time. Use the conference's local time zone and the site's established label.
7. Reconcile submissions with the table by normalized URL and title. Identify duplicates explicitly. Merge repeated submissions for the same activity into one row only when appropriate, unioning member organizations without duplication. Respect user-directed exclusions and corrections. Do not remove a duplicate merely because URLs match if the user expects separate submitted activities; explain ambiguity when needed.
8. Preserve member labels from the workbook unless the user directs a correction. Keep event-title links on program URLs for program entries. Keep Exhibit Hall links on Event URLs only when present.
9. Ensure the Markdown file begins with the opening front-matter delimiter as its first bytes; write UTF-8 without a byte order mark. A BOM may cause Jekyll to copy the Markdown file instead of processing its front matter.
10. Before reporting completion, compare the final table rows to the included workbook rows after applying explicit exclusions and merges. Report any unresolved mismatch. Do not run a site build or tests unless the user asks for verification.

## Table conventions

Use the site's existing event table header and HTML styling rather than creating a new format. A common row shape is:

```html
<tr><td style='white-space: nowrap'>Wed. Nov. 18<br>11:00am-12:00pm</td><td style='white-space: nowrap'>Paper</td><td><a href='PROGRAM_URL'>Paper title</a></td><td style='white-space: nowrap'>MEMBERS</td></tr>
```

Use the event category shown by the individual program entry (for example, Tutorial, Workshop, Paper, Birds of a Feather, or Exhibit Hall). Preserve the time precision shown in the program or spreadsheet. For an Exhibit Hall activity without a URL, keep the event title as plain text.

## Accuracy and reconciliation

- Distinguish the parent workshop/session URL from a presentation URL, even when both identify related items.
- Do not infer conference weekday/date from spreadsheet submission timestamps.
- Check for duplicate URLs and duplicate titles, then review whether their member fields differ before merging.
- If a user supplies a title, time, event type, or member correction, apply it to the matching row and retain other verified details.
- After changes that alter dates or times, restore chronological order.