---
title: Test Page
layout: default
resources:
  - label: Website
    url: https://icl.utk.edu/papi/
  - label: Repository
    url: https://github.com/icl-utk-edu/papi
    note: (this is a parenthetical note)
  - label: Downloads
    # url: https://github.com/icl-utk-edu/papi
  - label: Documentation
    url: https://github.com/icl-utk-edu/papi/wiki
    icon: <i class="fa-solid fa-font-awesome"></i>
---
## sw-areas-used

{% include sw-areas-used %}
{{ area_names | inspect }} {{ area_counts | inspect }}

{% comment %}
  This shouldn't give any output 
{% endcomment %}
{% include sw-areas-used collection="wg" %}
{{ area_names | inspect }} {{ area_counts | inspect }}

## show-resource-links

{% assign resources = page.resources %}
<ul style="list-style: none; padding: 0">
{% include show-resource-links.html links=resources %}
</ul>

## icon-map-lookup

{% capture i %}{% include icon-map-lookup label="Area" %}{% endcapture %}
{{ i | inspect }}

{% capture i %}{% include icon-map-lookup label="Supporting Member" %}{% endcapture %}
{{ i | inspect }}

{% capture i %}{% include icon-map-lookup label="Repository" %}{% endcapture %}
{{ i | inspect }}

## sw-areas-lookup

{% assign names = "" | split: "," %}
{% assign names = names | push: "Data and Visualization" %}
{% assign names = names | push: "Development Tools" %}

names = {{ names | inspect }}

{% capture e %}{% include sw-areas-lookup values=names input="name" output="short_name" %}{% endcapture %}
{% assign e = e | strip_newlines | split: "|" %}
{{ e | inspect }}

{% capture e %}{% include sw-areas-lookup values=e input="short_name" output="description" sep="|" %}{% endcapture %}
{% assign e = e | strip_newlines | split: "|" | uniq %}
{{ e | inspect }}

{% capture e %}{% include sw-areas-lookup values=e input= "description" output="short_name" sep="|" %}{% endcapture %}
{% assign e = e | strip_newlines | split: "|" %}
{{ e | inspect }}

{% assign shorts = "" | split: "," %}
{% assign shorts = shorts | push: "sweco" %}
{% assign shorts = shorts | push: "dataviz" %}

shorts = {{ shorts | inspect }}

{% capture e %}{% include sw-areas-lookup values=shorts input="short_name" output="description" sep="|" %}{% endcapture %}
{% assign e = e | strip_newlines | split: "|" %}
{{ e | inspect }}