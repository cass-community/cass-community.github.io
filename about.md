---
title: About Us
permalink: /about/
toc: true
toc_sticky: true
# layout: single
layout: splash # Default: home, but that includes a list of posts
classes: wide
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/cass-logo.png
---
The **Consortium for the Advancement of Scientific Software** (CASS) is a federation of member organizations committed to the stewardship and advancement of the current and future ecosystem of scientific computing software.

Our member organizations exist to support specific communities or to provide crosscutting capabilities related to scientific software stewardship. Member organizations may be categorized as **core members**, who take an active role in consortium governance, or **affiliate members**, who are in solidarity with the mission of the consortium but do not take an active role in consortium governance. Member organizations coordinate and cooperate as a consortium to maximize benefit to the ecosystem as a whole.

## Governing documents

* [CASS Charter v01]({{ "/assets/governance/CASS-Charter-v01.pdf" | relative_url }}), effective 2024-07-29
* [CASS By-Laws v01]({{ "/assets/governance/CASS-By-laws-v01.pdf" | relative_url }}), effective 2024-08-08

## CASS organizational structure

CASS is governed by a **Steering Committee** appointed by the members.  Core members each have one representative on the Steering Committee, while the affiliate members have one representative for every five affiliates.  The Steering Committee is assisted by three officers: a Chair, Vice-Chair, and a Secretary.  The Steering Committee is committed to openness and transparency in its governance processes.

CASS member organizations have their own leadership, governance, and activities, which are distinct from those of the Consortium.

Most of the work of CASS is carried out within **[Working Groups]({{ "/working-groups/" | relative_url }})**, which are created as needed.

### Current members and leadership

| Organization Name | Organization Lead(s) | Steering Committee Representative 
|:------------------|:------------------------|:-------
| ***Core Members*** | |
{% assign members = site.data.organization.members | where: "membership_level", "core" -%}
{% for m in members -%}
    {% assign org = m.name | default: m.short_name | default: "*missing data*" -%}
    {% if m.website -%}
        {% assign org = org | prepend: "[" | append: "](" | append: m.website | append: ")" -%}
    {% endif -%}
    {% if m.name and m.short_name -%}
        {% assign org = org | append: " (" | append: m.short_name | append: ")" -%}
    {% endif -%}
    {% assign scr = "" -%}
    {% if m.sc_reps -%}
        {% assign scr = m.sc_reps | join: ", " -%}
    {% endif -%}
| {{ org }} | {% if m.leads %}{{ m.leads | join: ", " }}{% endif %} | {{ scr }} 
{% endfor -%}
{% assign members = site.data.organization.members | where: "membership_level", "affiliate" -%}
{% assign scr_array = nil -%}
{% for m in members -%}
    {% assign scr_array = scr_array | concat: m.sc_reps -%}
{% endfor -%}
{% assign scr = scr_array | uniq | join: ", " -%}
| ***Affiliate Members*** | | {{ scr }} 
{% for m in members -%}
    {% assign org = m.name | default: m.short_name | default: "*missing data*" -%}
    {% if m.website -%}
        {% assign org = org | prepend: "[" | append: "](" | append: m.website | append: ")" -%}
    {% endif -%}
    {% if m.name and m.short_name -%}
        {% assign org = org | append: " (" | append: m.short_name | append: ")" -%}
    {% endif -%}
| {{ org }} | {% if m.leads %}{{ m.leads | join: ", " }}{% endif %} |
{% endfor %}

### Current officers

| Position | Person | Current Term Ends
|:---------|:-------|:-----------------
{% for o in site.data.organization.officers -%}
| {% if o.position %}{{ o.position }}{% endif %} | {% if o.name %}{{ o.name }}{% endif %} | {% if o.term_expires %}{{ o.term_expires }}{% endif %}
{% endfor %}

## Sponsors and funding

CASS operates on in-kind contributions of effort and other resources from member organizations.  As such, it has no budget of its own, and no direct sponsors.  

Member organizations, of course, have their own funding sources.  The current members of CASS are pleased to acknowledge support from the [U.S. Department of Energy](https://www.energy.gov/) (DOE) [Office of Advanced Scientific Computing Research](https://www.energy.gov/science/ascr/advanced-scientific-computing-research) (ASCR) through the Next-Generation Scientific Software Technologies (NGSST) and [Scientific Discovery through Advanced Computing](https://www.scidac.gov/) (SciDAC) programs. 

![DOE Office of Science logo]({{ "/assets/images/doe-sc-logo.png" | relative_url }}){: .align-center width="33%"}

## Targeted scientific software ecosystem

Based on its current membership, CASS focuses primarily on the ASCR scientific software ecosystem, including the [Software Technologies](https://www.exascaleproject.org/research/#software) developed in the [Exascale Computing Project](https://www.exascaleproject.org/) (ECP), with an emphasis on supporting large-scale high-performance parallel computers and computations. 

Details of the software in the "CASS ecosystem" can be found in the **[Software]({{ "/software/" | relative_url }})** section of the site.

## Join us!

CASS seeks to expand beyond its initial membership to include other projects and organizations focused on the stewardship and advancement of scientific software to reach a larger portion of the scientific software ecosystem.  Projects and organizations outside of the DOE are welcome! 

If you're interested, contact the [CASS Steering Committee](mailto:cass-steering-committee@email.ornl.gov).