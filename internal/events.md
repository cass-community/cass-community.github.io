---
title: Internal Event Information
excerpt: "Not intended for public use"
permalink: /internal/events
layout: single
classes: wide no-left-sidebar
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/tim-mossholder-GmvH5v9l3K4-unsplash.jpg
  caption: 'Photo by <a href="https://unsplash.com/@timmossholder">Tim Mossholder</a> on <a href="https://unsplash.com/photos/cogs-and-gears-GmvH5v9l3K4">Unsplash</a>'
---
*The resources linked from this page are intended for internal use by CASS members. Nothing in the internal tree should be linked from any public webpage.*

## Event series

{% assign from_collection = site.event-series | map: "series" | sort | uniq %}
{% assign from_wild = site.events | map: "series" | sort | uniq %}
{% assign wild_only = "" | split: "," %}

{% comment %}
  Identify wild series *not* found in the collection
{% endcomment %}
{% for s in from_wild %}
  {% unless from_collection contains s %}
    {% assign wild_only = wild_only | push: s %}
  {%endunless %}
{% endfor %}


**"Documented" series in `event-series` collection:** {{ from_collection  | array_to_sentence_string }}

**Additional series found only in the `events` collection:** {{ wild_only | array_to_sentence_string | default: "*none*" }}

## Unique event venues

{% assign events_by_venue = site.events | sort: "startdate" | reverse | group_by: "venue" %}
Venue | Count 
------|------
{% for v in events_by_venue -%}
{{ v.name | default: "*none*" }} | {{ v.items.size }}
{% endfor %}