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
---
{% assign featured_highlights = "" | split: "," %}

We *do* science (computer science, applied math), and our science enables *other* science (fundamental research).  We want to present some examples where we can talk about the science we're doing (on the computing side), and how it enables advances in fundamental research.  Preferrably examples where we can tie back to multiple software products.  And/or advances on the computing side enabling advances in multiple areas of fundamental research.

## Featured stories

{% assign url = "/highlights/2025-01-02-warpx" %}
{% assign query = "item.url contains '" | append: url | append: "'" %}
{% assign hl = site[page.collection] | where_exp: "item", query %}
{% assign featured_highlights = featured_highlights | push: hl[0].title %}

### {{ hl[0].title }}

![Teaser image]({{ hl[0].teaser | prepend: "/assets/highlights/" | relative_url }}){: .align-right width="25%" }

*Summary text here*

[Learn more...]({{ url | relative_url }}){: .btn .btn--inverse}

### WDMApp (fusion)

[Learn more...](#){: .btn .btn--inverse} (currently non-functional)

### EXAALT (molecular dynamics)

[Learn more...](#){: .btn .btn--inverse} (currently non-functional)

### Combustion-PELE

[Learn more...](#){: .btn .btn--inverse} (currently non-functional)

### Industry

[Learn more...](#){: .btn .btn--inverse} (currently non-functional)

### Other government agencies

[Learn more...](#){: .btn .btn--inverse} (currently non-functional)

<hr>

## Complete list of highlights
{% comment %}
  Need to filter the featured_highlights out of the collection
  or else change this to "All highlights"
{% endcomment %}