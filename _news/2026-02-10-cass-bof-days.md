---
title: "Register now for CASS BoF Days, coming February 10-12, 2026"
last_modified_at: 2026-01-06
published: false
---
CASS BoF Days provides opportunities for to bring communities together for Birds-of-a-Feather (BoF) sessions around topics of interest.  Participation is free and open to the public, however, registration is required for each event.  Follow the links below for details.

{% assign today = site.time | date:"%Y-%m-%d" %}

{% assign entries = site.events | where: "series", "CASS BoF Days" | where_exp: "item", "item.startdate contains '2024'" %}

<div class="entries-list">
  {% include ev-documents-collection.html entries=entries sort_by="startdate" sort_order="forward" type="list" %}
</div>
