---
# title: "Save the dates for CASS BoF Days, coming February 10-12, 2026"
title: "Register now for CASS BoF Days, coming February 10-12, 2026"
last_modified_at: 2026-01-16
# published: false
---
{% comment %}
CASS BoF Days provides opportunities for to bring communities together for Birds-of-a-Feather (BoF) sessions around topics of interest.  Mark your calendars for the 2026 edition, coming February 10-12.  BoF sessions will be scheduled in the following time slots:

  - 11:00am - 12:30pm EDT
  - 1:00pm - 2:30pm EDT
  - 3:00pm - 4:30pm EDT

Sessions will be either 60 or 90 minutes long. Participation is free and open to the public, however, registration will be required for each event.

We'll update this page when registration opens, in the next couple of weeks.
{% endcomment %}

CASS BoF Days provides opportunities to bring communities together for Birds-of-a-Feather (BoF) sessions around topics of interest.  Participation is free and open to the public, however, registration is required for each event.  Follow the links below for details.

{% assign today = site.time | date:"%Y-%m-%d" %}

{% assign entries = site.events | where: "venue", "2026 CASS BoF Days" %}

<div class="entries-list">
  {% include ev-documents-collection.html entries=entries sort_by="startdate" sort_order="forward" type="list" show_time=true show_registration=true %}
</div>
