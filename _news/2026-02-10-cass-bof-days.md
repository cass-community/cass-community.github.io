---
# title: "Save the dates for CASS BoF Days, coming February 10-12, 2026"
# title: "Register now for CASS BoF Days, coming February 10-12, 2026"
title: "In case you missed it: 2026 CASS BoF Days"
last_modified_at: 2026-02-27
---
The 2026 CASS BoF Days hosted 15 community-led Birds-of-a-Feather (BoF) sessions over the course of three days (10-12 February), with a total of 781 registrations! Most of the event pages linked below have been updated with the slides presented during the sessions, so you can catch up if you weren't able to attend or want to take another look (the sessions were *not* recorded, sorry). We appreciate everyone who organized and attended this year's BoFs, as well as those who worked behind the scenes to facilitate them!

The CASS Community BoF Days are an annual event (perhaps more frequently if there is sufficient interest). If you'd like to organize a BoF session in the next round, please [reach out](mailto:cass-steering-committee@email.ornl.gov) and let us know!

{% comment %}
CASS BoF Days provides opportunities to bring communities together for Birds-of-a-Feather (BoF) sessions around topics of interest.  Participation is free and open to the public, however, registration is required for each event.  Follow the links below for details.
{% endcomment %}

{% assign today = site.time | date:"%Y-%m-%d" %}

{% assign entries = site.events | where: "venue", "2026 CASS BoF Days" %}

<div class="entries-list">
  {% include ev-documents-collection.html entries=entries sort_by="startdate" sort_order="forward" type="list" show_time=false show_registration=false %}
</div>

{% comment %}
CASS BoF Days provides opportunities for to bring communities together for Birds-of-a-Feather (BoF) sessions around topics of interest.  Mark your calendars for the 2026 edition, coming February 10-12.  BoF sessions will be scheduled in the following time slots:

  - 11:00am - 12:30pm EDT
  - 1:00pm - 2:30pm EDT
  - 3:00pm - 4:30pm EDT

Sessions will be either 60 or 90 minutes long. Participation is free and open to the public, however, registration will be required for each event.

We'll update this page when registration opens, in the next couple of weeks.
{% endcomment %}
