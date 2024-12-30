# Software Catalog Contributor README

This document is intended to provide guidance for contributing to the software catalog and individual software product entries on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

Most of the information here is organized by the specific keys in the [PRODUCT_TEMPLATE.md](PRODUCT_TEMPLATE.md) file.  *But please also note the [Best Practices](#best-practices) guidance*.

If you're working on the rendering of the site, the top-level [README.md](../README.md) also provides relevant information.

## `name` *(string)*

This is the name you want to be shown for your software product.  It should be short and simple -- generally just the name or acronym by which your product is known to the public, not a "title"-like string. Extra descriptive words should be worked into the `description` field rather than included here. If your software is known by an acronym, put the expansion in the `description` or `long_description` fields, or vice versa.

Generally, the value of the `name` field will be rendered as a heading or a title, but the next line will be the `description` field.

## `area` *(controlled vocabulary)*

Area is the term we're using for the topical category of the software product.  For the present, we're using the same ones employed by [ECP ST](https://www.exascaleproject.org/research/#software) except that what was *NNSA Software* under ECP should now be categorized under the more appropriate topical area.

Areas are a *controlled vocabulary*, defined in the file `_data/sw-areas.yml`. We use the `short_name` values for the product's `area`, which the site will map to appropriate `name`s and `description`s. Values that are not recognized will generally be rendered as "missing data" in red to indicate an error.

Each product is expected to be in *exactly one area*.  If this needs to change, please work with the [point of contact](../README.md#point-of-contact) for the website on the necessary enhancements.

If you need an area that is not already defined, please work with the [point of contact](../README.md#point-of-contact) for the website on the necessary enhancements.

Note that multiple `short_name`s may map to the same `name` and `description`.  This is another convenience for the contributor.  If you want to help with consistency, the first `short_name` is the preferred one.

Note that the `Area` key (note capitalization) in the `e4s.yml` file is similar to our `area` (lowercase), but it does not use the short_names that we do, and is not a controlled vocabulary.  In the future, we plan to discuss with the E4S DocPortal team how to merge this information.

## `cass_member`

## `description`

## `long_description`

## `target_audience`


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

The file `_data/icon-map.yml` provides a list of labels and icons which, ideally, will help them to be used consistently throughout the site (appropriate coding required).  The maintainers of the site are open to proposals for new mappings.

## Best practices

* Keys are case sensitive.
* Be aware that some keys use controlled vocabularies, as noted above.  Values that aren't in the controlled vocabulary may be flagged (usually with "missing data", in red text), or ignored, depending on the specific key.
* The `name` field should be very short -- just the name or acronym by which your software is known.  Extra descriptive words should be worked into the `description` field rather than included here. If your software is known by an acronym, put the expansion in the `description` or `long_description` fields, or vice versa.

* Documentation links (especially ReadTheDocs) should generally be to the "latest" version rather than a specific version
* Website links should not be used to link to a repository.  Use (only) a Repository link
* For Downloads, it is better to link to a download (or releases) *page* rather than a specific file.
* For Downloads, it is better to link to a generic "latest" rather than a specific version
* Don't use the same URL with multiple labels -- pick the most appropriate (specific) one only.
* `target_audience` should lead with indicating the target audience.  If you want to cite current users, do that after describing the actual general target audience.
* `name` should not include extra words -- put them in `description` if they're necessary
* `description` should be constructed as the completion of "{{ name }}: {{ description }}"
  * It should not repeat the product `name`
  * It should be written in sentence case, starting with a capital letter
  * It does not need to be a complete sentence and should *not* end with a period, regardless