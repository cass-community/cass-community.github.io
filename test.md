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
#
software_mentioned:
  - ADIOS
  - TAU
  - HDF5
  - Trilinos
  - Spack
#
feature_row:
  - image_path: /assets/impacts/2025-01-wdmapp/wdmapp-coupled-turbulence.jpg
    title: "Whole Device Modeling of Magnetically Confined Fusion Plasma"
    excerpt: "Magnetically confined fusion plasmas are being designed within the International Tokamak Experimental Reactor (ITER) and other projects that will operate in physics regimes only recently achieved through experiment. Modeling and simulation activities are required to design and optimize these new facilities. The fusion community is developing an approach to whole device modeling that will provide predictive numerical simulations of the physics required for magnetically confined fusion plasmas to enable design optimization and fill in the experimental gaps for ITER and future fusion devices."
  - image_path: /assets/impacts/2025-01-warpx/warpx-amrex.png
    title: "WarpX Enables Computational Design of Next-Generation Plasma-Based Accelerators"
    excerpt: "WarpX is a particle-in-cell (PIC) simulation code that models the motion of charged particles or plasma. WarpX is used to model chains of plasma-based particle accelerators for future high-energy physics colliders – table-top particle accelerators. These table-top accelerators can be used in both scientific and medical applications."
  - image_path: /assets/impacts/2024-12-13-pnetcdf.jpg
    title: "I/O in WRF: Evaluating Modern Parallel I/O Techniques"
    excerpt: "This work presents a comparative study of several parallel I/O implementations in the Weather Research and Forecasting model (WRF). The I/O libraries under study include PnetCDF, HDF5 via NetCDF4, and ADIOS. Our evaluation and performance analysis can guide I/O strategies for modern parallel codes."
---
## cass-members-represented

{% include cass-members-represented %}

{% capture m %}{% include cass-members-represented %}{% endcapture %}
<p>m = {{ m | inspect }}</p>
{% assign m = m | strip_newlines | split: "|" %}
<p>m = {{ m | inspect }}</p>


## show-software-mentioned.html

{% include show-software-mentioned.html %}

## sw-link-mention.html

{% include sw-link-mention.html %}

{% include sw-link-mention.html product="ADIOS" %}

{% include sw-link-mention.html product="Trilinos" %}

{% include sw-link-mention.html product="hdf5" %}

{% include sw-link-mention.html product="ParaView" %}

## flexible_feature_row

{% assign image_path = "" | split: "," %}
{% assign title = "" | split: "," %}
{% assign excerpt = "" | split: "," %}

{% for f in page.feature_row %}
  {% assign image_path = image_path | push: f.image_path %}
  {% assign title = title | push: f.title %}
  {% assign excerpt = excerpt | push: f.excerpt %}
{% endfor %}

Feature_row = {{ page.feature_row | inspect }}

Inputs:
  image_path = {{ image_path | inspect }}
  title = {{ title | inspect }}
  excerpt = {{ excerpt | inspect }}

{% include flexible_feature_row no_border=true 
    image_path=image_path title=title excerpt=excerpt
%}


## github_edit_link

{% include github_edit_link %}


## people-info.html

{% include people-info.html name="Daniel S. Katz" %}

{% include people-info.html name="Daniel S. Katz" link="github" %}

{% include people-info.html name="Daniel S. Katz" link="homepage" %}

{% include people-info.html name="Daniel S. Katz" link="nonexistent" %}

{% include people-info.html name="Daniel S. Katz" link=false %}

{% include people-info.html name="Daniel S. Katz" affiliation=true %}

{% include people-info.html name="Daniel S. Katz" affiliation=true short_affil=true %}

{% capture person %}{% include people-info.html name="Daniel S. Katz" short_affil=true %}{% endcapture %}
{{ person | inspect }}



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