# Working Group Contributor README

This document is intended to provide guidance for contributing to the working group section of the site and individual working group entries on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

Most of the information here is organized by the specific keys in the [TEMPLATE.md](TEMPLATE.md) file.  *But please also note and follow the [Best Practices](#best-practices) guidance*.

Note that both keys and values are *case sensitive* unless otherwise stated.

If you're working on the rendering of the site, the top-level [README.md](../README.md) also provides relevant information.

## `name` *(string)*

The name of the working group.  It should *not* include the words "Working Group" or "WG".

Generally, the value of the `name` field will be rendered as a heading or a title, but the next line will be the `description` field.

## `description` *(string)*

A brief description of the working group. The `description` is always shown immediately after the `name` and they should be considered together as, in effect constructing a sentence-length description of the working group with the form `name: desciption`.  However it does not need to be a complete sentence in the grammatical sense.

The description is used in small areas (such as the grid view of the working group collection page, and as a subtitle on the individual working group page) and should be kept short.  Give the reader enough information to encourage them to click into the working group page to get the details (or be confident that they don't want to).

**Important guidance:**

* The `description` *should not* repeat the `name`.
* The description` *should* be in sentence case.
* The `description` *should not* end with a period.

## `status` *(controlled vocabulary)*

The `status` of the working group can be "Active" or "Retired".

## `status_date` *(ISO date)*

The effective date of the current `status`, in YYYY-MM-DD format.

## `charter` *(multiparagraph text)*

The by-laws require that every working group have a charter. It should include:

* Purpose
* Relationship to other working groups (as needed, not required by by-laws)
* Lifetime
* Expected membership
* Reporting expectations
* Additional information (as needed)

Input for this field should generally use the YAML syntax for a multi-line string, denoted by the pipe ("|") character on the line with the key. Each section should have a run-in header in italics, for example `*Purpose*`.

## `charter_status` *(string)*

The `charter_status` should be either "Provisional" or "Approved" and should also mention the date of that status.  For example `Provisional, since 2024-09-17`.

## `chair` *(list)*

The by-laws require that every working group have a chair.  This field should be a YAML list with information about one or more chairs.

```yaml
chair:
  - name Firstname Lastname (Affiliation) # REQUIRED
    email: first.last@example.com         # REQUiRED
```

The email is needed because the readers are advised to contact the chair(s) to learn more about or join the working group.

## Resource link lists

What we're calling "resource link lists" are generic data structure that makes it easy to express links to resources or artifacts in a simple, but flexible manner.  The workging group page currently supports two such lists:
* `logistical_resources`
* `additional_resource_links`

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

The labels are arbitrary, and therefore completely flexible.  No particular label is required, and you can add any label that fits your needs.

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

## `logistical_resources` *(resource link)*

It is not clear how useful this.  This is meant to be information about meetings and collaborative tools used by the working group.  But for security reasons, we don't want to publicize links.

## Best practices

* Keys are case sensitive.

* Be aware that some keys use controlled vocabularies, as noted above.  Values that aren't in the controlled vocabulary may be flagged (usually with "missing data", in red text), or ignored, depending on the specific key.

* The `description` *should not* repeat the `name`.

* The description` *should* be in sentence case.

* The `description` *should not* end with a period.

* Don't use the same URL with multiple labels. Instead, either pick the most appropriate (most specific) label that makes sense, and have one entry only, or, for example, if a webpage includes sections for both Downloads and Documentation, use the appropriate anchors to differentiate the URLs (e.g., <https://example.com/#downloads> and <https://example.com/#documentation>).

* Don't use the `Website` label for links to the code repository, use the `Repository` label instead.

* In general, it is most useful to the reader to link to the most general version of a resource rather than specific versions.  This also avoids the need to update the catalog entry too frequently.
  * Link to a page of, e.g., releases or documentation, rather than a specific file.
  * If you have to link to something more specific, look for a generic "latest" version rather than linking to a specific version.  These are often provided for downloads and sometimes for documentation.
  * Note that the Read the Docs service generally provides a "latest" link, but you may have to select it to get the appropriate link to put in your product entry.