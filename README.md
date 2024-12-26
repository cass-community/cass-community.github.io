# cass-community-new

New website (work in progress) for the Consortium for the Advancement of Scientific Software (CASS)

## Core tools

This website uses Jekyll and the Minimal Mistakes theme and is hosted on GitHub Pages with a custom domain at <https://cass.community>.

## Contributing

If you're familiar with Jekyll and the GitHub pull request process, feel free to propose your own changes in the form of a pull request. (Please test your changes with a local Jekyll installation before submitting the pull request.) Otherwise, you're probably best off submitting an issue to the GitHub repository, or reaching out to the point of contact to discuss your needs.

## Key data files

A number of files in the `_data/` directory contain key information used throughout the site.  These files are primarily documented interally.  They are listed here primarily for awareness.

* `_data/organization.yml` contains information about CASS as an organization, include the list of members (with key details), the steering committee members, and the officers.  The list of `members` is keyed to the `short_name` of the organizations, with the usual capitalization.
* `_data/sw-areas.yml' contains the "areas" used in the software catalog.  The list is keyed to the locally-defined `short_name` for each area (short and all lowercase), but we also support the area definitions observed in the e4s.yml files used for the E4S DocPortal: <https://github.com/E4S-Project/E4S-Documenter/tree/master/data> (last updated 2024-12-26).  The list maps the short_names to a consistent set of human-friendly labels, as used in the ECP ST area.

## Software catalog

The `_sw` collection is presented on the /software/ page, with individual pages in the /sw/ directory.  Documentation for contributions to this collection can be found in the `_sw/README.md` and `_sw/PRODUCT_TEMPLATE.md` files.

## Point of contact
David Bernholdt (@bernhold) is the primary point of contact for the <https://cass.community> website.