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

This file contains the "areas" used in the software catalog. The list of areas is based on the ECP ST areas, but has been revised and expanded. Areas should be in *sentence case* and should be kept very short. Each area has a terse `description` of the content of the area, which should be in *sentence case* and should *not* end with a period.  

## Point of contact

David Bernholdt (@bernhold) is the primary maintainer for the <https://cass.community> website.
