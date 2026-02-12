---
title: Contributing to the CASS.Community Website
excerpt: "We welcome your contributions!"
permalink: /contributing/
layout: single
classes: wide no-left-sidebar
header:
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/florian-olivo-4hbJ-eymZ1o-unsplash.jpg
  caption: 'Photo by <a href="https://unsplash.com/@florianolv">Florian Olivo</a> on <a href="https://unsplash.com/photos/lines-of-html-codes-4hbJ-eymZ1o">Unsplash</a>'   
---

CASS and this website represent the work of many, and we welcome and encourage community members to contribute to making this site better. Following the guidance below will help us incorporate your contributions easily and quickly.

*If you have questions which are not answered in this guide, please [contact us](https://github.com/cass-community/cass-community.github.io/issues).*

## Issues

If you identify issues with the website's content or operation, or want to provide feedback, we encourage to you submit an [issue](https://github.com/cass-community/cass-community.github.io/issues) in our GitHub repository.

## Contribution workflow

The preferred approach is to follow the usual GitHub pull request workflow:

- [Fork](https://github.com/cass-community/cass-community.github.io/fork) the upstream repository: <https://github.com/cass-community/cass-community.github.io>
- Develop your contribution
- Create and submit a pull request to the upstream repository
- The maintainers will review, iterate with you as necessary, and merge your pull request

The development and acceptance of your event will go faster if you have the ability to locally build and preview Jekyll site, though the maintainers will work with you to get your event published regardless.

If you're not able to use the pull request workflow, please file an [issue](https://github.com/cass-community/cass-community.github.io/issues) to let us know that you need an alternative path and the maintainers will work with you on it.

The site is published under a Creative Commons Attribution (CC-BY) license, and contributions are accepted on that basis.

## Implementation overview

The <https://cass.community> website is implemented using the [Jekyll](https://jekyllrb.com/) static site generator and hosted on the [GitHub Pages](https://pages.github.com) service at a custom domain. The content is primarily in [Markdown](https://en.wikipedia.org/wiki/Markdown) format, particularly the [kramdown](https://kramdown.gettalong.org/) dialect. Jekyll also makes use of the [Liquid](https://shopify.github.io/liquid/) templating language, which is used extensively in this site.

The website source is hosted in the [cass-community/cass-community.github.io](https://github.com/cass-community/cass-community.github.io) GitHub repository.

We use Michael Rose's very flexible [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) (MM) theme as the basis of the site. We try to use MM's capabilities and features wherever possible. But it is fairly common that we find the need to modify elements provided by MM or create our own tools. You'll find most of these files in the `_includes` and `_layouts` directories. Where filenames match those in the MM theme (<https://github.com/mmistakes/minimal-mistakes>), we've copied and modified those files (unmodified MM files are not present in our repository). Most other files we've developed; a few have been copied from other developers, and we do our best to give attribution.

Many sections of the site are structured as Jekyll [collections](https://jekyllrb.com/docs/collections/), in which content is provided in the form of a separate file for each member of the collection: Events, Event series, Impacts, News, Software, Working groups. Other portions of the site are based on individual pages. The collections generally have fairly specific requirements for YAML frontmatter that must be provided, which are documented [below](#guides-for-specific-sections-of-the-site). The individual pages are, for the most part, based on the Markdown content in the body of the file.

## House style

In order to maintain a consistent look and feel across the site, we've developed a set of style guidelines.

- Page titles (usually the frontmatter `title`) should be in **title case**

- All other headings (h2+) should be in **sentence case**

- **Heading levels should be used in sequence** (e.g., h4 inside h3 inside h2). Don't skip levels because you don't like how a heading level is rendered. This impedes accessibility.

- Generally, avoid going deep in headings. If you think you need h4 or higher, give it some more thought.

- The main page in each section of the site should have an appropriate hero image. Other pages should *not* use hero images.

- We use icons (from the [Font Awesome](https://fontawesome.com) free collection) to provide visual interest and a visual design language to help readers navigate the content quickly. The file  `_data/icon-map.yml` maps numerous labels or concepts to specific icons. If you want to use icons in your content, please use them consistent with this file. Expanding the use of a particular icon to a *related* concept is usually reasonable. However, if you want to represent a concept that further from those already represented in the icon map file, please chose a *different* icon.

- Think about links. Ensure you are linking to stable and long-lived URLs when there are multiple options. For example, we always prefer DOI links where they're available.
  - Note that many publisher sites list the DOI and provide a link, but often that link is to a publisher site, not to the DOI resolver (`https://doi.org/`). We should only link to the DOI resolver site.

- We can host modestly sized artifacts on the site if you don't have a better (more reliable, long-lived) place to host them. We do not host videos on this site, but we do have a YouTube channel where we can work with you to post them.

- Refer to "CASS member organizations", not "SSOs" (for "software stewardship organization") or such.
  - The phrase "software stewardship organization" should only be used in describing the type of projects/organizations that are members of CASS.

- We must avoid the appearance that we are a "DOE-only" organization. It happens that all the founding members are DOE-funded projects, but we are open to any project/organization with a software stewardship mission compatible with our Charter joining. Don't use DOE-specific or exclusive language.

## Guides for specific sections of the site

*This area is under development.*

- [Events](events)
- Event series
- Impacts
- News
- Software catalog *coming soon*
- Working groups
