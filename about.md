---
layout: single
title: About Us
permalink: /about/
toc: true
toc_sticky: true
---
The **Consortium for the Advancement of Scientific Software** (CASS) is a federation of member organizations committed to the stewardship and advancement of the current and future ecosystem of scientific computing software.

Our member organizations exist to support specific communities or to provide crosscutting capabilities related to scientific software stewardship. Member organizations may be categorized as core members, who take an active role in consortium governance, or affiliate members, who are in solidarity with the mission of the consortium but do not take an active role in consortium governance. Member organizations coordinate and cooperate as a Consortium to maximize benefit to the ecosystem as a whole.

## Governing Documents

* [CASS Charter v01]({{ "/assets/governance/CASS-Charter-v01.pdf" | relative_url }}), effective 2024-07-29
* [CASS By-Laws v01]({{ "/assets/governance/CASS-By-laws-v01.pdf" | relative_url }}), effective 2024-08-08

## CASS Leadership

CASS is governed by a **Steering Committee** appointed by the members.  Core members each have one representative on the Steering Committee, while the affiliate members have one representative for every five affiliates.  The Steering Committee is assisted by three officers: a Chair, Vice-Chair, and a Secretary.  The Steering Committee is committed to openness and transparency in its governance processes.

CASS member organizations have their own leadership, governance, and activities, which are distinct from those of the Consortium.

## CASS Working Groups

Most of the work of CASS is carried out within **Working Groups**, which are created as needed.  Further details about the activities of the CASS Working Groups will be provided elsewhere on this site.

## Current CASS Members and Leadership

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

## Officers

| Position | Person | Current Term Ends
|:---------|:-------|:-----------------
{% for o in site.data.organization.officers -%}
| {% if o.position %}{{ o.position }}{% endif %} | {% if o.name %}{{ o.name }}{% endif %} | {% if o.term_expires %}{{ o.term_expires }}{% endif %}
{% endfor %}

## Targeted Scientific Software Ecosystem

The founding members of CASS are software stewardship projects funded by the [U.S. Department of Energy](https://www.energy.gov/) (DOE) [Office of Advanced Scientific Computing Research](https://www.energy.gov/science/ascr/advanced-scientific-computing-research) (ASCR) through the Next-Generation Scientific Software Technologies (NGSST) and [Scientific Discovery through Advanced Computing](https://www.scidac.gov/) (SciDAC) programs.  Based on its current membership, CASS focuses primarily on the ASCR scientific software ecosystem, including the [Software Technologies](https://www.exascaleproject.org/research/#software) developed in the [Exascale Computing Project](https://www.exascaleproject.org/) (ECP).

## Join Us!

CASS seeks to expand beyond its initial membership to include other projects and organizations focused on the stewardship and advancement of scientific software to reach a larger portion of the scientific software ecosystem.  Projects and organizations outside of the DOE are welcome! If you're interested, contact the [CASS Steering Committee](mailto:cass-steering-committee@email.ornl.gov).