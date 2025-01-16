---
title: Impacts of CASS-Stewarded Software on Science
permalink: /impacts/
collection: highlights
entries_layout: list
sort_by: date
sort_order: reverse
layout: hl-collection
# layout: splash # Default: home, but that includes a list of posts
classes: wide
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/warpx-transparent.png
#
# These are the "featured stories" at the top of the page
#
featured_stories:
  - /highlights/2025-01-10-warpx
  - /highlights/2025-01-14-dod-hpc
  - /highlights/2025-01-14-sw-ecosystem-power
---
We *do* science (computer science, applied math), and our science enables *other* science (fundamental research).  We want to present some examples where we can talk about the science we're doing (on the computing side), and how it enables advances in fundamental research.  Preferrably examples where we can tie back to multiple software products.  And/or advances on the computing side enabling advances in multiple areas of fundamental research.

{% if page.featured_stories %}
## Featured stories

{% for s in page.featured_stories %}
{% assign query = "item.url contains '" | append: s | append: "'" %}
{% assign hl = site[page.collection] | where_exp: "item", query %}
{% assign teaser = hl[0].teaser | prepend: "/assets/highlights/" | relative_url %}
### {{ hl[0].title }}

<a href="{{ teaser }}" class="image-popup"><img src="{{ teaser }}" class="align-right" style="width: 15%"></a>
{{ hl[0].excerpt }} 

[Learn more...]({{ hl[0].url | relative_url }}){: .btn .btn--inverse .align-left}
<br>
{% endfor %}

<hr>
{% endif %}

## Complete list of highlights
{% comment %}
  Should we filter the featured_highlights out of the collection?
  Which would make the title Additional highlights
{% endcomment %}