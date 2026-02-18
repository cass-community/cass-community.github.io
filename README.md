# cass-community.github.io

The website for the Consortium for the Advancement of Scientific Software (CASS)

## Core tools

This website uses Jekyll and the Minimal Mistakes theme and is hosted on GitHub Pages with a custom domain at <https://cass.community>.

## How to contribute

The website provides a contributor's guide at <http://cass.community/contributing/>.

## Key data files and their usage

A number of files in the `_data/` directory contain key information used throughout the site.

### `_data/organization.yml`

This file contains information about CASS as an organization, include the list of members (with key details), the steering committee members, and the officers.  The list of `members` is keyed to the `short_name` of the organizations, with the usual capitalization.

### `_data/people.yml`

This file contains common information about people so that it can be presented easily and consistently on the site.  The list is keyed to the individual's name. When referenced on the site, the name must match exactly the name in this file for the lookup to succeed.

The minimum expected fields (those used currently on the site) are: `affiliation`, `short_affil`, and `email`.  Additional field can be added as needed.

The `_include/people-info.html` function uses this file to look up and emit information in HTML format.

```yaml
Person One:
  affiliation: Full name of institutional affiliation
  short_affil: Abbreviated institutional affiliation
  email: email address
```

### `_data/sw-areas.yml`

This file contains the "areas" used in the software catalog.  The list is keyed to the locally-defined `short_name` for each area (short and all lowercase). The list maps the short_names to a consistent set of human-friendly `name`s, as used in the ECP ST area, as well as terse `description`s.

#### Data structure details

In the initial implementation of the site, we allowed multiple `short_name`s to map to the same area `name`.  We've since changed to limit it to a 1:1 mapping so that we can have the default sort for the software collection be by `area`.  Some of the processing code still supports the many-to-one mapping, but we'll eliminate that over time in favor of simpler code.

The `name` values should be in sentence case

#### Rendering details

When rendering the site, use `_include/software-areas-lookup` to access the `site.data.software-areas` structure systematically.  The function takes a specification of the `input` key, the `values` to lookup, and the key to `output` the corresponding values from.  Any of the keys in the structure can be used as inputs or outputs (currently `short_name`, `name`, and `description`).  Note that because of limitations of Jekyll and Liquid, the result returned is not an array, but a text string which must be converted into an array. The general use case looks like this:

```
{% capture a %}{% include sw-areas-lookup values=values input="name" output="short_name" sep="|" %}{% endcapture %}
{% assign a = a | strip_newlines | split: "|" %}
```

If there is no mapping for the given `area`, it should be rendered as given, in red font to call out that there's a problem.

## Point of contact

David Bernholdt (@bernhold) is the primary maintainer for the <https://cass.community> website.
