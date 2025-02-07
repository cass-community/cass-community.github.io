---
title: Consortium for the Advancement of Scientific Software
excerpt: Advancing scientific discovery through software stewardship
layout: splash # Default: home, but that includes a list of posts
classes: wide
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/cass-word-1280x384-transparent.png
---
{% capture highlights_icon %}{% include icon-map-lookup label="Highlights" %}{% endcapture %}
{% capture software_icon %}{% include icon-map-lookup label="Software" %}{% endcapture %}
{% capture mailinglist_icon %}{% include icon-map-lookup label="Mailing list" %}{% endcapture %}
{% capture membership_icon %}{% include icon-map-lookup label="Membership" %}{% endcapture %}
{% capture chat_icon %}{% include icon-map-lookup label="Chat" %}{% endcapture %}
{% capture handshake_icon %}{% include icon-map-lookup label="Handshake" %}{% endcapture %}

The **Consortium for the Advancement of Scientific Software (CASS)** is committed to the stewardship and advancement of the current and future ecosystem of scientific computing software in support of competitiveness and innovation through the advancement of science. These stories illustrate some of the impacts of software in the CASS portfolio.

{% include hl-feature-row no_border=true %}

**{{ highlights_icon }} Read more about [impacts of our software...]({{ "/impacts/" | relative_url }})**

## Software

The current CASS software portfolio focuses on freely available libraries and tools that support leading-edge computational science and engineering research on high-performance parallel computers. Topical areas include: data and visualization, development tools, mathematical libraries, programming models and runtimes, and software ecosystem and delivery. Most of the software has been developed with support from the U.S. Department of Energy [Office of Advanced Scientific Computing Research](https://www.energy.gov/science/ascr/advanced-scientific-computing-research), and the [Software Technologies](https://www.exascaleproject.org/research/#software) focus area of the [Exascale Computing Project](https://www.exascaleproject.org/).

**{{ software_icon }} [Explore our software...]({{ "/software/" | relative_url }})**

## Engage with us

CASS and its member organizations work with our software product teams to improve the quality, sustainability, and interoperability of the software products in our ecosystem -- essential for a robust and trustworthy scientific software ecosystem.  We also collaborate with the broader community to leverage these reusable software libraries and tools to advance science. There are many ways you can get involved. DOE sponsorship is *not* required to participate or join.

**{{ mailinglist_icon }} [Join our announcement mailing list](http://eepurl.com/iRiSnY)** for updates on CASS events and news.

**{{ membership_icon }} Participate in our [working groups]({{ "/working-groups/" | relative_url }}).** Working groups are the primary means by which we organize members of the CASS community to advance our stewardship efforts. Most CASS working groups welcome public participation.  Working group topics include: software foundations, ecosystem integration, metrics, user-developer experience, and the scientific software workforce.

**{{ chat_icon }} Reach out to a [member organization]({{ "/about/#current-members-and-leadership" | relative_url }})** if you're interested in specific areas of the software ecosystem.

**{{ handshake_icon }} Become a [member of CASS]({{ "/about/" | relative_url }}).** We welcome projects and organizations with similar scientific software stewardship missions to consider membership in CASS.

## Sponsors
{% capture funding %}{% include funding-ack-content em=false %}{% endcapture %}
{{ funding | strip | markdownify }}