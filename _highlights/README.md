# Highlights Contributor README

This document is intended to provide guidance for contributing to the highlights section of the site and individual highlights on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

Most of the information here is organized by the specific keys in the [TEMPLATE.md](TEMPLATE.md) file.  *But please also note and follow the [Best Practices](#best-practices) guidance*.

Note that both keys and values are *case sensitive* unless otherwise stated.

If you're working on the rendering of the site, the top-level [README.md](../README.md) also provides relevant information.

## Filenames

We expect to publish many highlights, and the easiest way to identify which are the most recent is to include the date in the filename.  Consequently, all highlight files should have names of the form `YYYY-MM-DD-topic.md`.  The date in the filename doesn't have to *exactly* correspond to the date of publication, but it should be close, and it should ensure that highlights on the same `topic` sort into the correct chronological order.

## `title` *(string)*

## `date` *(ISO date)*

## `software_mentioned` *(list)*

## Best practices

* Keys are case sensitive.

* Be aware that some keys use controlled vocabularies, as noted above.  Values that aren't in the controlled vocabulary may be flagged (usually with "missing data", in red text), or ignored, depending on the specific key.