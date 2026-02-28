# Software Catalog Contributor README

This document is intended to provide guidance for contributing to the software catalog and individual software product entries on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

Most of the information here is organized by the specific keys in the [TEMPLATE.md](TEMPLATE.md) file.  *But please also note and follow the [Best Practices](#best-practices) guidance*.

Note that both keys and values are *case sensitive* unless otherwise stated.

If you're working on the rendering of the site, the top-level [README.md](../README.md) also provides relevant information.

## `name` *(string)*

This is the name you want to be shown for your software product.  It should be short and simple -- generally just the name or acronym by which your product is known to the public, not a "title"-like string. Extra descriptive words should be worked into the `description` field rather than included here. If your software is known by an acronym, put the expansion in the `description` or `long_description` fields, or vice versa.

Generally, the value of the `name` field will be rendered as a heading or a title, but the next line will be the `description` field.

## `area` *(controlled vocabulary)*

Area is the term we're using for the topical category of the software product.  For the present, we're using the same ones employed by [ECP ST](https://www.exascaleproject.org/research/#software) except that what was *NNSA Software* under ECP should now be categorized under the more appropriate topical area.

Areas are a *controlled vocabulary*, defined in the file `_data/sw-areas.yml`. We use the `short_name` values for the product's `area`, which the site will map to appropriate `name`s and `description`s. Values that are not recognized will generally be rendered as "missing data" in red to indicate an error.

Each product is expected to be in *exactly one area*.  If this needs to change, please work with the [point of contact](../README.md#point-of-contact) for the website on the necessary enhancements.

If you need an area that is not already defined, please work with the [point of contact](../README.md#point-of-contact) for the website on the necessary enhancements.

Note that the `Area` key (note capitalization) in the `e4s.yml` file is similar to our `area` (lowercase), but it does not use the same short_names that we do, and is not a controlled vocabulary.  In the future, we plan to discuss with the E4S DocPortal team how to merge this information.

## `areas` *(controlled vocabulary)*

Area is the term we're using for the topical category of the software product.  Our labels have evolved from those employed by [ECP ST](https://www.exascaleproject.org/research/#software) except that what was *NNSA Software* under ECP should now be categorized under the more appropriate topical area.  Additional labels have been added as needed.

Areas are a *controlled vocabulary*, defined in the file `_data/sw-areas-new.yml`. We use the `name` values for the product's `area`s.  Exact matches are required in spelling and case.  By convention, area `name`s should always be in *sentence case*.  Values that are not recognized will generally be rendered as "missing data" in red to indicate an error.

Each product is expected to be in at least one area.  Multiple areas are supported, and should be listed in priority order -- which area label is the *most* relevant, *second most* relevant, etc.

If you need an area that is not already defined, please work with the [point of contact](../README.md#point-of-contact) for the website on the necessary enhancements.

Note that the `Area` key (note capitalization) in the `e4s.yml` file is similar to our `areas` (lowercase), but it is not a controlled vocabulary.  In the future, we plan to discuss with the E4S DocPortal team how to merge this information.

## `cass_members` *(controlled vocabulary)*

This field should be a YAML list of the the CASS member organization(s) (also known as software stewardship organization(s), or SSOs) which are providing stewardship support for the product.  In most cases, there is only one such SSO, but it is possible for there to be more.  Using the list structure supports this.  Note that you *cannot* use the form `cass_members: SSO` -- the SSO will not be picked up properly.

The SSO names are a *controlled vocabulary*, defined in `members` structure in the file `_data/organization.yml`. We use the `short_name` values for the product's `cass_member` values, which the site will usually display as-is, but via the `members` structure, can also map into other information.  The `short_name` values correspond to the acronyms used by the member organizations and are case sensitive (e.g. "S4PST", not "s4pst").

## `description` *(string)*

The `description` should be a short string of text that provides enough information about the product to determine whether or not it might interest them.  The `description` is always shown immediately after the `name` and they should be considered together as, in effect constructing a sentence-length description of the product with the form `name: desciption`.  However it does not need to be a complete sentence in the grammatical sense.

The description is used in small areas (such as the grid view of the catalog, and as a subtitle on the product page) and should be kept short.  Give the reader enough information to encourage them to click into the product page to get the details (or be confident that they don't want to).

**Important guidance:**

* The `description` *should not* repeat the `name`.
* The description` *should* be in sentence case.
* The `description` *should not* end with a period.

## `long_description` *(paragraph text)*

This field should provide a semi-technical description of the product and its capabilities or key features.  It should target a reasonably knowledgable reader who might want to know what distinguishes this product from others.  The `long_description` should be approximately one paragraph in length.

Input for this field should generally use the YAML syntax for a multi-line string, denoted by the pipe ("|") character on the line with the key.  The syntax actually supports multiple paragraphs, if needed.  Paragraph breaks are expressed with a blank line, as usual in Markdown.  The YAML processor will keep reading the input as long as the indentation continues.

## `target_audience` *(paragraph text)*

This field should provide an explanation of who should be interested in this product.  The target is for someone with less specific domain knowledge than the `long_description`, and doesn't need to distinguish this product from others.  It should be approximately one paragraph in length.

Input for this field should generally use the YAML syntax for a multi-line string, denoted by the pipe ("|") character on the line with the key.  The syntax actually supports multiple paragraphs, if needed.  Paragraph breaks are expressed with a blank line, as usual in Markdown.  The YAML processor will keep reading the input as long as the indentation continues.

**Important guidance:**

* If the product is popular in certain scientific communities, you're welcome to include that information, but put it *after* you provide a general description of the target audience, not before.

## License information

This field should contain the SPDX expression for the applicable license.  In most cases, this will be an SPDX short identifier (https://spdx.org/licenses/), but it may be an actual expression.  The most common expressions will use WITH to add an exception to a short identifier.  In the case of a multiply-licensed package it may be of the form "id-A OR id-B" where id-A and id-B are short identifiers. Note that SPDX is meant to be quite specific about the license, so matching is fairly strict. The SPDX website offers a tool to identify the appropriate license from the text (https://tools.spdx.org/app/check_license/), though it can sometimes have a tough time matching text from the wild. Often, cutting out text that's clearly extraneous to the license (such as copyright assertions or funding acknowledgements) Pay careful attention to variants of licenses which appear as separate entries in the SPDX license list.  For example, BSD-3-Clause vs BSD-3-Clause-LBNL.

** Important guidance:**

* SPDX doesn't provide a simple, succinct way of saying that a product is a collection of packages, each with its own license.  We use the non-standard phrase `per-member-package` to indicate this.  The hyphens are important to give the expression the same form as an SPDX license identifier, so it can be parsed in the same way.
* If you have a license that's not in the SPDX license list, they recommend that you request that it be added to the list.  We encourage maintainers to do this, and in the mean time, they should leave this field blank.

## OpenSSF Best Practices badge information

This field should provide the project ID for the package on https://www.bestpractices.dev/en/projects.  Projects which have not registered for the OpenSSF badging process can leave the entry blank or comment it out altogether.

## Foundation membership information

This field should provide the full name of the software foundation the project is affiliated with. The foundation name should appear in `_data/foundations.yml` along with a short name or abbreviation and a URL for the foundation.  Projects which are not members of software foundations can leave the entry blank or comment it out altogether.

## Package information

These fields are used to connect the CASS catalog entry to information on the product in the [E4S DocPortal](https://e4s-project.github.io/DocPortal.html) and [Spack package listing](https://packages.spack.io/), respectively.  In both cases, the values provided are used as a query string to look up the specific package information.


In the future, we may mine the `e4s.yml` and Spack package files for information to display directly on the CASS catalog page.

If you would like to provide information about other packaging of your product,  please discuss it with the point of contact for the website. It is likely that we'd want to identify other packaging tools that are widely enough used to be worth supporting, and/or develop an abstraction that will allow us to process a list of packages similarly to the way we process resource link lists (see below).

**Important guidance:**

* Generally, if the product has a Spack package and/or is available through the E4S distribution, this information should be provided.  
* In the rare cases where these are not *recommended* ways to access the product, the preference is to list the packaging information, but provide a brief explanation in the `long_description` as to the recommended approach. *Rationale:* On the assumption that visitors may find out about the packages being available from other sources, this approach provides better transparency -- acknowledging their existence, but recommending a different approach in practice.

### `e4s_product` *(string)*

The concept of the product name in the E4S is not well defined, at present, particularly with respect to capitalization. In constructing the query for the DocPortal, the site forces the provided `e4s_product` name to uppercase (which triggers the DocPortal to *open* the record matching the query, showing its details immediately).  Consequently, the capitalization of the `e4s_product` value does not matter, currently.  However this may change in the future.  The best practice recommendation, therefore, is to use the product team's preferred capitalization in the `e4s_product` value.

If the product is not part of E4S, this key should be commented out.

### `spack_name` *(string)*

If the product does not have a Spack package, this key should be commented out.

## Resource link lists

What we're calling "resource link lists" are generic data structure that makes it easy to express links to resources or artifacts in a simple, but flexible manner.  The catalog currently supports three such lists:
* `additional_resource_links`
* `end_user_resource_links`
* `developer_resource_links`

Each of these has fundamentally the same schema, they are are just labeled differently when rendered on the site.  The intent is to allow the contributor to identify resources that specifically target end-users of the product, or developers of the product, or more generic resources without such connotations.

The general structure of a resource link list is as follows:

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

A basic set of labels that would be appropriate for most products to provide include:
* `Website`
* `Repository`
* `Downloads`
* `Documentation`

But the labels are arbitrary, and therefore completely flexible.  No particular label is required, and you can add any label that fits your needs.

You can think of the `icon` as the bullet at the start of the entry.  The site has defaults for the "typical" labels. If you use a label that doesn't have a default icon and don't provide one, the label text starts the line. For further details, see below.

The most common use case for the `note` key is if you want to list, for example, multiple items with the `Repository` label, pointing to different URLs.  The `note` can be added to each item to differentiate them.  Alternatively, you could include the differentiating information in the `label`, but then you lose the convenience of automatically picking up the default icon.  Another use case for the `note` key is to denote the format or file type of whatever is linked. These are often enclosed in parenthesis.  For example, "(PDF)", "(tar.gz)", etc.  When resource lists are rendered, the note is displayed after the label text, and is not included in the link, if a `url` is given.

**Important guidance:**

* Don't use the same URL with multiple labels. Instead, either pick the most appropriate (most specific) label that makes sense, and have one entry only, or, for example, if a webpage includes sections for both Downloads and Documentation, use the appropriate anchors to differentiate the URLs (e.g., <https://example.com/#downloads> and <https://example.com/#documentation>).
* Don't use the `Website` label for links to the code repository, use the `Repository` label instead.
* In general, it is most useful to the reader to link to the most general version of a resource rather than specific versions.  This also avoids the need to update the catalog entry too frequently.
  * Link to a page of, e.g., releases or documentation, rather than a specific file.
  * If you have to link to something more specific, look for a generic "latest" version rather than linking to a specific version.  These are often provided for downloads and sometimes for documentation.
  * Note that the Read the Docs service generally provides a "latest" link, but you may have to select it to get the appropriate link to put in your product entry.

### Icons

We're using icons from [FontAwesome](https://fontawesome.com/v6/search?o=r&m=free) (only the free set) for icons in resource lists and elsewhere across the site.  Specifically, we use the HTML representation of the icon, which generally has the following form" `<i class="fa-solid fa-font-awesome"></i>`.  This is the kind of content that's expected as the value of an `icon` field.

### Site-wide label to icon mapping

To faciliate the consistent use of specific icons across the site, the file `_data/icon-map.yml` provides a list of labels and icons that we refer to when rendering resource lists, as well as other many other situations.  If you do not provide an `icon` in a resource list, the site will look up the `label` in this data structure and use the indicated `icon`.

The maintainers of the site are open to proposals for new mappings.

## Best practices

* Keys are case sensitive.

* Be aware that some keys use controlled vocabularies, as noted above.  Values that aren't in the controlled vocabulary may be flagged (usually with "missing data", in red text), or ignored, depending on the specific key.

* The `name` field should be very short -- just the name or acronym by which your software is known.  Extra descriptive words should be worked into the `description` field rather than included here. If your software is known by an acronym, put the expansion in the `description` or `long_description` fields, or vice versa.

* The `description` field should be thought of together with the `name`, in the form `name: description`.
  * It should *not* repeat the `name`.
  * It should be in sentence case.
  * It should *not* end with a period.

* The `long_description` field should describe your product's capabilities and features, and what distinguishes it from others in the space.  It should target a reasonably knowledgable reader who might be choosing among similar products.

* The `target_audience` field should describe, in a general sense, the kinds of problems the product addresses and who might be interested in using it. The target is for someone with less specific domain knowledge than the `long_description`, and doesn't need to distinguish this product from others.
  * If the product is popular in certain scientific communities, you're welcome to include that information, but put it *after* you provide a general description of the target audience, not before.

* Generally, if the product has a Spack package and/or is available through the E4S distribution, this information should be provided.  

* In the rare cases where these are not *recommended* ways to access the product, the preference is to list the packaging information, but provide a brief explanation in the `long_description` as to the recommended approach. *Rationale:* On the assumption that visitors may find out about the packages being available from other sources, this approach provides better transparency -- acknowledging their existence, but recommending a different approach in practice.

* The `e4s_product` name is not currently sensitive to capitalization as it is used, but the recommendation is to use the capitalization that the product team prefers for the product name (e.g., "AMReX" over "amrex").

* Don't use the same URL with multiple labels. Instead, either pick the most appropriate (most specific) label that makes sense, and have one entry only, or, for example, if a webpage includes sections for both Downloads and Documentation, use the appropriate anchors to differentiate the URLs (e.g., <https://example.com/#downloads> and <https://example.com/#documentation>).

* Don't use the `Website` label for links to the code repository, use the `Repository` label instead.

* In general, it is most useful to the reader to link to the most general version of a resource rather than specific versions.  This also avoids the need to update the catalog entry too frequently.
  * Link to a page of, e.g., releases or documentation, rather than a specific file.
  * If you have to link to something more specific, look for a generic "latest" version rather than linking to a specific version.  These are often provided for downloads and sometimes for documentation.
  * Note that the Read the Docs service generally provides a "latest" link, but you may have to select it to get the appropriate link to put in your product entry.