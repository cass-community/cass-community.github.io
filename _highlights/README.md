# Highlights Contributor README

This document is intended to provide guidance for contributing to the highlights section of the site and individual highlights on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

Most of the information here is organized by the specific keys in the [TEMPLATE.md](TEMPLATE.md) file.  *But please also note and follow the [Best Practices](#best-practices) guidance*.

Note that both keys and values are *case sensitive* unless otherwise stated.

If you're working on the rendering of the site, the top-level [README.md](../README.md) also provides relevant information.

## Styles of highlights

We support two basic styles of highlights: free-form and slide-based.  Both versions support arbitrary markdown content for the body of the highlight.  The primary differences are:

* Free-form highlights utilize a `teaser` field to designate an eye-candy image to associate with the highlight.
* Slide-based highlights display an image of the slide on the bottom of the highlight page, linked to a PDF of of the slide.  Both the image and the PDF should be in the `/assets/highlights/` directory with a name that is associated with the filename of the highlight itself.

## Filenames

We expect to publish many highlights, and the easiest way to identify which are the most recent is to include the date in the filename.  Consequently, all highlight files should have names of the form `YYYY-MM-DD-topic.md`.  The date in the filename doesn't have to *exactly* correspond to the date of publication, but it should be close, and it should ensure that highlights on the same `topic` sort into the correct chronological order.

## Assets

Highlights are generally accompanied by images and other files.  They should be placed in `/assets/highlights/` and to facilitate management of the files, the asset filename(s) should start with the same string as the highlight filename itself.

## `title` *(string)*

The title of the highlight.

## `date` *(ISO date)*

The date on which the highlight was published.  It will appear in the "Last updated" field at the bottom of the highlight page, as well as in the list of highlights.

## `slide` *(list)*

For highlights that are based on a Powerpoint slide, this list provides the base filenames for the image and PDF versions of the file.  The files must reside in `/assets/highlights/`.

```yaml
slide:
  - image: file1.jpg
  - file: file2.pdf
```

## `software_mentioned` *(list)*

A list of software products mentioned in the highlight.  These are generally expected to be products in the software catalog, but don't have to be.  In the current implementation of the site, entries that match product names will be linked to the product page, while those that don't will be displayed as plain text.

```yaml
software_mentioned:
  - Product1
  - product2
  - ProDUCT3
```

**Important guidance:**

* `software_mentioned` entries must match the `name` field in the `sw` collection, including capitalization.

## `cass_members` *(controlled vocabulary)*

This field should be a list of CASS member organizations (also known as software stewardship organizations, or SSOs) which is providing stewardship support for the product.

The SSO names are a *controlled vocabulary*, defined in `members` structure in the file `_data/organization.yml`. We use the `short_name` values for the product's `cass_members` values, which the site will usually display as-is, but via the `members` structure, can also map into other information.  The `short_name` values correspond to the acronyms used by the member organizations and are case sensitive (e.g. "S4PST", not "s4pst").

## Content *(markdown text)*

The content of the highlight entry is completely up to the contributor, in both styles of highlight.

An excerpt of the content (currently the first 50 words) will be shown on the highlight list, so it is a good idea to lead with something to catch the reader's interest.

## Best practices

* Keys are case sensitive.

* `software_mentioned` entries must match the `name` field in the `sw` collection, including capitalization.