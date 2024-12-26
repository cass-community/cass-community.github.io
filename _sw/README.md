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

## Resource link lists

The `additional_resource_links` key is a way of providing an arbitrary set of links to external information sources.  The general structure is as follows:

```yaml
additional_resource_links:
  - label: Label 1                # REQUIRED
    url: https://example.com      # REQUIRED
    icon: fa-solid fa-mug-hot     # OPTIONAL
    note: additional text here    # OPTIONAL
  - label: Label 2
    url: https://example.org
```

Which would be rendered (approximately) as:<br>
&#x2615; [Label 1](https://example.com) additional text here<br>
[Label 2](https://example.org)

 The typical set includes: `Website`, `Repository`, `Downloads`, and `Documentation`, but all of these are optional, and you can also add other labels to fit your needs.

You can think of the `icon` as the bullet at the start of the entry.  The site has defaults for the "typical" labels. If you use a label that doesn't have a default icon and don't provide one, the label text starts the line.

The most common use case for the `note` key is if you want to list, for example, multiple items with the `Repository` label, pointing to different URLs.  The `note` can be added to each item to differentiate them.  Alternatively, you could include the differentiating information in the `label`, but then you lose the convenience of automatically picking up the default icon.

## Icons

Icons in the resource list should come from [FontAwesome](https://fontawesome.com/v6/search?o=r&m=free) (only the free set).  FontAwesome icons have a two-part identifier, of the form `fa-<class> fa-<specific>`.  Make sure you get both parts.

## Site-wide label to icon mapping

The file <https://github.com/cass-community/new/blob/main/_data/resource-icon-map.yml> provides a list of labels and icons which, ideally, will help them to be used consistently throughout the site (appropriate coding required).
