---
title: Internal Software Information
excerpt: "Not intended for public use"
permalink: /internal/software
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

## Spack package availability

These listings are for informational purposes only.  It is not necessarily useful or appropriate for every product to be packaged with Spack.

{% assign spack_yes = site.software | where_exp: "item", "item.spack_name" | map: "name" %}
**Products with Spack packages:** {{ spack_yes | sort_natural | array_to_sentence_string }}

{% assign spack_no = site.software | where: "spack_name", nil | map: "name" %}
**Products *without* Spack packages:** {{ spack_no | sort_natural | array_to_sentence_string }}

## E4S availability

These listings are for informational purposes only.  It is not necessarily useful or appropriate for every product to be part of the E4S distribution.

{% assign e4s_yes = site.software | where_exp: "item", "item.e4s_product" | map: "name" %}
**Products available in E4S:** {{ e4s_yes | sort_natural | array_to_sentence_string }}

{% assign e4s_no = site.software | where: "e4s_product", nil | map: "name" %}
**Products *not* available in E4S:** {{ e4s_no | sort_natural | array_to_sentence_string }}

{% assign e4s_possible = "" | split: "," %}
{% for e in e4s_no %}
  {% for s in spack_yes %}
    {% if e == s %}
      {% assign e4s_possible = e4s_possible | push: e %}
    {% endif %}
  {% endfor %}
{% endfor %}
**Products *not* available in E4S but having Spack packages:** {{ e4s_possible | sort_natural | array_to_sentence_string }}

## Mentions in highlights

This list is for informational purposes only.  We do not expect exact parity in the number of highlights in which each software product appears.  But for those with fewer highlights, we might want to make extra efforts to try to identify good impact stories to highlight.

{% assign sw = site.software | map: "name" | sort_natural %}

| Package | Highlight Count
|:--------|:--------------:
{% for s in sw %}
  {%- assign highlights = site.impacts | where_exp: "item", "item.software_mentioned contains s" -%}
| {{ s }} | {{ highlights.size }}
{% endfor %}