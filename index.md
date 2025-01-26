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
  overlay_image: /assets/images/cass-word-1280x384-transparent.png
#
#   An initial exploration of using the Jekyll Codex carousel.  Needs (a lot) of work for our needs.
#
# carousels:
#   - images:
#     - image: /new/assets/highlights/2025-01-wdmapp/wdmapp-coupled-turbulence.jpg
#     - image: /new/assets/highlights/2025-01-warpx/warpx-amrex.png
#     - image: /new/assets/highlights/2025-01-sw-ecosystem-power/powers-of-10-transparent.png
#     - image: /new/assets/highlights/2025-01-dod-hpc/spack-e4s-logos-qr-codes.png
#     - image: /new/assets/highlights/2024-12-13-pnetcdf.jpg
#
# Try using the MM "feature row" capability as a carousel alternative
#
# feature_row:
#   - image_path: /assets/highlights/2025-01-wdmapp/wdmapp-coupled-turbulence.jpg
#     title: "Whole Device Modeling of Magnetically Confined Fusion Plasma"
#     excerpt: "Magnetically confined fusion plasmas are being designed within the International Tokamak Experimental Reactor (ITER) and other projects that will operate in physics regimes only recently achieved through experiment. Modeling and simulation activities are required to design and optimize these new facilities. The fusion community is developing an approach to whole device modeling that will provide predictive numerical simulations of the physics required for magnetically confined fusion plasmas to enable design optimization and fill in the experimental gaps for ITER and future fusion devices."
#   - image_path: /assets/highlights/2025-01-warpx/warpx-amrex.png
#     title: "WarpX Enables Computational Design of Next-Generation Plasma-Based Accelerators"
#     excerpt: "WarpX is a particle-in-cell (PIC) simulation code that models the motion of charged particles or plasma. WarpX is used to model chains of plasma-based particle accelerators for future high-energy physics colliders – table-top particle accelerators. These table-top accelerators can be used in both scientific and medical applications."
#     url: "#test-link"
#   - image_path: /assets/highlights/2024-12-13-pnetcdf.jpg
#     title: "I/O in WRF: Evaluating Modern Parallel I/O Techniques"
#     excerpt: "This work presents a comparative study of several parallel I/O implementations in the Weather Research and Forecasting model (WRF). The I/O libraries under study include PnetCDF, HDF5 via NetCDF4, and ADIOS. Our evaluation and performance analysis can guide I/O strategies for modern parallel codes."
---
{% comment %}
  An initial exploration of using the Jekyll Codex carousel.  Needs (a lot) of work for our needs.
{% include carousel.html height="50" unit="%" duration="7" number="1" %}
{% endcomment %}

{% comment %}
  An initial exploration of the MM theme "feature_row" capability.  Needs work too.
{% include feature_row %}
{% endcomment %}

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