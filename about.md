---
title: About Us
permalink: /about/
# toc: true
# toc_sticky: true
#layout: about-page
layout: single
# layout: splash 
classes: wide no-left-sidebar
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/thisisengineering-p5wrlynJR4A-unsplash.jpg
  caption: 'Photo by <a href="https://unsplash.com/@thisisengineering">ThisisEngineering</a> on <a href="https://unsplash.com/photos/man-in-blue-dress-shirt-and-woman-in-black-long-sleeve-shirt-p5wrlynJR4A">Unsplash</a>'
---
The Consortium for the Advancement of Scientific Software (CASS) is a federation of member organizations committed to the stewardship and advancement of the current and future ecosystem of scientific computing software. Our members support specific scientific communities or provide crosscutting capabilities related to scientific software stewardship. Member organizations coordinate and cooperate through the Consortium to maximize benefit to the ecosystem as a whole.

## Targeted scientific software ecosystem

Based on its current membership, CASS focuses primarily on software which has been supported by the [U.S. Department of Energy](https://www.energy.gov/) (DOE) [Office of Advanced Scientific Computing Research](https://www.energy.gov/science/ascr/advanced-scientific-computing-research) (ASCR), with an emphasis on supporting large-scale high-performance parallel computers and computations, including the [Software Technologies](https://www.exascaleproject.org/research/#software) developed in the [Exascale Computing Project](https://www.exascaleproject.org/) (ECP).

Details of the software in the "CASS ecosystem" can be found in the [Software]({{ "/software/" | relative_url }}) section of the site.

## CASS organizational structure

Member organizations may be categorized as core members, who take an active role in consortium governance, or affiliate members, who are in solidarity with the mission of the consortium but do not take an active role in consortium governance. The Consortium is open to new members. DOE sponsorship is *not* required. [Email us](mailto:cass-steering-committee@email.ornl.gov?subject=Membership interest) for more information.

CASS is governed by a Steering Committee appointed by the members.  Core members each have one representative on the Steering Committee, while the affiliate members have one representative for every five affiliates.  The Steering Committee is assisted by three officers: a Chair, Vice-Chair, and a Secretary.  The Steering Committee is committed to openness and transparency in its governance processes.

CASS member organizations have their own leadership, governance, and activities, which are distinct from those of the Consortium.

Most of the work of CASS is carried out within [Working Groups]({{ "/working-groups/" | relative_url }}), which are created as needed.

## Current members and leadership

| Organization Name | Focus Area(s) | Organization Lead(s) | Steering Committee Representative 
|:------------------|:--------------|:---------------------|:-------
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
    {% for r in m.sc_reps %}
        {% capture s %}{% include people-info.html name=r link="email" short_affil=true %}{% endcapture -%}
        {% assign scr = scr | append: s -%}
        {% unless forloop.last %}{% assign scr = scr | append: ", " %}{% endunless -%}
    {% endfor -%}
    {% assign leads = "" -%}
    {% for lead in m.leads %}
        {% capture l %}{% include people-info.html name=lead link="email" short_affil=true %}{% endcapture -%}
        {% assign leads = leads | append: l -%}
        {% unless forloop.last %}{% assign leads = leads | append: ", " %}{% endunless -%}
    {% endfor -%}
| {{ org }} | {{ m.focus_area }} | {{ leads }} | {{ scr }} 
{% endfor -%}
{% assign members = site.data.organization.members | where: "membership_level", "affiliate" -%}
{% assign scr_array = nil -%}
{% for m in members -%}
    {% assign scr_array = scr_array | concat: m.sc_reps | uniq -%}
{% endfor -%}
{% assign scr = "" -%}
{% for r in scr_array %}
    {% capture s %}{% include people-info.html name=r link="email" short_affil=true %}{% endcapture -%}
    {% assign scr = scr | append: s -%}
    {% unless forloop.last %}{% assign scr = scr | append: ", " %}{% endunless -%}
{% endfor -%}
| ***Affiliate Members*** | | {{ scr }}
{% if members.size != 0 -%}
    {% for m in members -%}
        {% assign org = m.name | default: m.short_name | default: "*missing data*" -%}
        {% if m.website -%}
            {% assign org = org | prepend: "[" | append: "](" | append: m.website | append: ")" -%}
        {% endif -%}
        {% if m.name and m.short_name -%}
            {% assign org = org | append: " (" | append: m.short_name | append: ")" -%}
        {% endif -%}
        {% assign leads = "" -%}
        {% for lead in m.leads %}
            {% capture l %}{% include people-info.html name=lead link="email" short_affil=true %}{% endcapture -%}
            {% assign leads = leads | append: l -%}
            {% unless forloop.last %}{% assign leads = leads | append: ", " %}{% endunless -%}
        {% endfor -%}
| {{ org }} | {{ m.focus_area }} | {{ leads }} |
    {% endfor %}
{% else -%}
| *none at present* | |
{% endif %}

### Current officers

| Position | Person | Elected | Term Ends
|:---------|:-------|:--------|:-----------------
{% for o in site.data.organization.officers -%}
| {% if o.position %}{{ o.position }}{% endif %} | {% if o.name %}{% include people-info.html name=o.name link="email" short_affil=true %}{% endif %} | {% if o.elected %}{{ o.elected }}{% endif %} | {% if site.data.organization.officers_term %}{% include days-ahead date=o.elected days=site.data.organization.officers_term %}{% endif %}
{% endfor %}

## Governing documents

* [CASS Charter v01]({{ "/assets/governance/CASS-Charter-v01.pdf" | relative_url }}), effective 2024-07-29
* [CASS By-Laws v01]({{ "/assets/governance/CASS-By-laws-v01.pdf" | relative_url }}), effective 2024-08-08

## Sponsors and funding

CASS operates on contributions of effort and other resources from member organizations.  As such, it has no budget of its own, and no direct sponsors.  

{% capture funding %}{% include content/funding-ack logos=true %}{% endcapture %}
Member organizations, of course, have their own funding sources. {{ funding | strip }}

{% comment %}
## Join us!

CASS seeks to expand beyond its initial membership to include other projects and organizations focused on the stewardship and advancement of scientific software to reach a larger portion of the scientific software ecosystem.  Projects and organizations outside of the DOE are welcome! 

If you're interested, contact the [CASS Steering Committee](mailto:cass-steering-committee@email.ornl.gov).
{% endcomment %}