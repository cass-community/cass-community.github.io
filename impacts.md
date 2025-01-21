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
  - /highlights/2025-01-warpx
  - /highlights/2025-01-dod-hpc
  - /highlights/2025-01-sw-ecosystem-power
---

Computing is central to the advancement of modern science. In experimental and observational research, computers and software are used to design and control apparatuses and collect and analyze data, which is increasingly voluminous and complex. However, computational science (and engineering) has also come into its own, using modeling and simulation to understand and predict physical phenomena. A large and diverse scientific software ecosystem supports and enables scientific advances across all fronts.

The portion of the scientific software ecosystem that is currently the focus of the Consortium for the Advancement of Scientific Software (CASS) is essentially the product of research and development in computer science, applied mathematics, and related areas – mathematical libraries, development tools, programming models and runtimes, tools for data and visualization, and tools to facilitate software delivery. The libraries and tools that CASS members help steward are typically used by other scientists to enable their computationally-based fundamental research.

These highlights illustrate ways in which software in the CASS ecosystem is used by other computational scientists, or even other organizations, to facilitate advances in their fundamental research, as well as advances in computer science and applied math embodied in those software products themselves.

{% if page.featured_stories %}
## Featured stories

{% for s in page.featured_stories %}
{% assign query = "item.url contains '" | append: s | append: "'" %}
{% assign hl = site[page.collection] | where_exp: "item", query %}
{% assign img = hl[0].teaser %}
{% capture teaser %}{% include hl-image-path image=img %}{% endcapture %}
{% assign teaser = teaser | relative_url %}
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
{% capture featured_icon %}{% include icon-map-lookup label="Featured" %}{% endcapture %}
*Stories featured above are noted with a {{ featured_icon }}*