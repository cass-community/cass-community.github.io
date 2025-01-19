---
title: Consortium for the Advancement of Scientific Software
#excerpt:  A federation of member organizations dedicated to the stewardship and advancement of the scientific software ecosystem
excerpt: Helping steward high-performance parallel software that enables computational science and engineering applications which are advancing scientific discovery
layout: splash # Default: home, but that includes a list of posts
classes: wide
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/cass-logo.png
---

## About

The **Consortium for the Advancement of Scientific Software (CASS)** is a federation of member organizations committed to the stewardship and advancement of the current and future ecosystem of scientific computing software.
[Learn more...]({{ "/about/" | relative_url }}){: .btn .btn--inverse .align-right}

## Software

The current members of CASS are focused on the corner of the scientific software ecosystem that uses high-performance parallel computing, and on software which has received support from the U.S. Department of Energy [Office of Advanced Scientific Computing Research](https://www.energy.gov/science/ascr/advanced-scientific-computing-research), and the [Software Technologies](https://www.exascaleproject.org/research/#software) focus area of the [Exascale Computing Project](https://www.exascaleproject.org/).
[Learn more...]({{ "/software/" | relative_url }}){: .btn .btn--inverse .align-right}

## Impacts

In addition to embodying advanced research and development in computer science, applied math, and related areas, the software CASS members help steward enable a broad range of computational science and engineering applications which are advancing scientific discovery and understanding in many fields.
[Learn more...]({{ "/impacts/" | relative_url }}){: .btn .btn--inverse .align-right}

## Working groups

CASS operates on the voluntary contributions of effort and resources by its member organizations and others in the community. Working groups are the primary means by which we organize members of the CASS community to advance our stewardship efforts. Most CASS working groups welcome public participation.
[Learn more...]({{ "/working-groups/" | relative_url }}){: .btn .btn--inverse .align-right}

## Join us!

There are many ways individuals or organizations can work with CASS to help steward the scientific software ecosystem.  DOE sponsorship is <em>not</em> required.
[Learn more...]({{ "/about/#join-us" | relative_url }}){: .btn .btn--inverse .align-right}

## Sponsors
{% capture funding %}{% include funding-ack-content em=false %}{% endcapture %}
{{ funding | strip | markdownify }}