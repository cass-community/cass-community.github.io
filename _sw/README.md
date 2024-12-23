# Software Catalog README

This document is intended to provide guidance for contributing to and maintaining the software catalog and individual software product entries on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

## Areas

Areas are the term we're using for the topical category of the software product.  For the present, we're using the same ones employed by [ECP ST](https://www.exascaleproject.org/research/#software) except that what was *NNSA Software* under ECP should now be categorized under the more appropriate topical area.

Areas are documented in the product entries using a shorthand.  The mapping from the shorthand to a human-friendly `name` is defined in <https://github.com/cass-community/new/blob/main/_data/sw-areas.yml>.  Some specific points:

* Processing considerations
    * When rendering the site, the `area` shorthand should look up and present the corresponding `site.data.sw-areas[page.area]`.
    * If there is no mapping for the given `area`, it should be rendered as given, in red font to call out that there's a problem.
    * We use the fontawesome file folder icon (`<i class="fa-regular fa-folder-open"></i>`) to indicate "areas"
    * For an example of this processing, see <https://github.com/cass-community/new/blob/main/_includes/sw-sidebar.html>
* Notes on the mappings
    * Note that we currently support both `dataviz` and `datavis` for the *Data and Visualization* area because we got multiple submissions using each (despite the documentation in the template).
    * When adding or changing areas, the <https://github.com/cass-community/new/blob/main/_data/sw-areas.yml> must be updated accordingly.