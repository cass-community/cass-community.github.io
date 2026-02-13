---
title: Internal Support Resources
excerpt: "Not intended for public use"
permalink: /internal/
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

- [Calendar]({% link internal/calendar.md %}): due dates for Steering Committee actions
  - Office elections
  - Working group reviews
- [Events]({% link internal/events.md %}): information about CASS events
  - Event series
  - Unique event venues
- [Software]({% link internal/software.md %}): information about the software packages in the CASS portfolio
  - Software by CASS member
  - Availability of spack packages
  - Availability in E4S
  - Counts of mentions in highlights
  - OpenSSF Best Practices badge status
  - Foundation memberships
  - Software licenses

## Site build date and time

{% assign build = site.time | date: "%s" | plus: 0 %}
{% assign aoedate = build | date: "%s" | minus: 43200 %}

Site built: {{ build | date: "%FT%T%:z" }} ({{ build | date: "%s" }})

AOE date: {{ aoedate | date: "%FT%T" }}
