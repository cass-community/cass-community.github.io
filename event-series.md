---
title: Event Series
excerpt: Organized and presented by CASS and affiliates
permalink: /event-series/
collection: event-series
entries_layout: grid
layout: collection
# layout: single
classes: wide no-left-sidebar
header:
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/headway-F2KRf_QfCqw-unsplash.jpg
  caption: 'Photo by <a href="https://unsplash.com/@headwayio">Headway</a> on <a href="https://unsplash.com/photos/crowd-of-people-sitting-on-chairs-inside-room-F2KRf_QfCqw">Unsplash</a>'
---
Events organized by CASS, its members, and affiliates, are organized into several series. Select a series to see events in that particular series or go to the [main events page]({% link events.md %}) for *all* events.

The current event series are:

{% assign series = site.events | map: "series" | sort | uniq %}
{{ series | inspect }}
