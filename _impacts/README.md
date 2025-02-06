# Impact Stories Contributor README

This document is intended to provide guidance for contributing to the impacts section of the site and individual highlights on the <https://cass.community> website.  It is very much a work in progress.  If things are wrong, unclear, or missing, please file an [issue](https://github.com/cass-community/new/issues).

Most of the information here is organized by the specific keys in the [TEMPLATE.md](TEMPLATE.md) file.  *But please also note and follow the [Best Practices](#best-practices) guidance*.

Note that both keys and values are *case sensitive* unless otherwise stated.

If you're working on the rendering of the site, the top-level [README.md](../README.md) also provides relevant information.

## House style for highlights

*The following are stylistic guidelines for the writing and presentation of highlights.  Some are inherited from the general house style for the site (documented in the top-level [README](../README.md)).  Others are specific to the highlights section of the site.*

### General language and style

* (Page) Titles (h1) should be in title case

* All other headings (h2+) should be in sentence case

* Heading levels should be used in sequence (e.g., h4 inside h3 inside h2).  Don't skip levels because you don't like how a heading level is rendered.  This impedes accessibility.

* Generally avoid going deep in headings unless there is a strong reason.  If you think you need h4 or higher, give it some more thought.

* Refer to "CASS member organizations", not "SSOs" or such 
  * The phrase "software stewardship organization" should only be used in describing the type of projects/organizations that are members of CASS.

* Don't use DOE-specific or exclusive language. We must avoid the appearance that we are a "DOE-only" organization.  It happens that all of the founding members are DOE-funded projects, but we are open to any project/organization with a software stewardship mission compatible with our Charter joining.  

* When linking to papers and such, use DOIs wherever possible.
  * Note that many publisher sites list the DOI and provide a link, but often that link is to a publisher site, not to the DOI resolver (`https://doi.org/`).  We should only link to the DOI resolver site.

### Highlight content

* Generally, highlights should lead with an h2 heading "The science". We prefer to highlight how CASS software enables *science*.  Application-based highlights should describe the application in broad terms, making connections to the scientific advances it enables.  Awards with an HPC component, arguably enabled by CASS software such as Gordon Bell Prizes, are also good to mention.
* When mentioning applications we prefer (but it is not required) to link the software mention to that package's preferred web presence.
  * If they have a website that includes or links to other resources for the package, that's generally going to be the preferred target.  
  * Failing that, probably the code repository, if it is public.
* We are happy to include O(1) "preferred citation" for an application itself (what the application team would request that users of the package cite in a paper).  This should be included in an "Additional resources" section at the end of the highlight.
* We are happy to link to published papers (preferred) or highlights relating to application science accomplishments discussed in the highlight.  However these should not be excessive.  And ideally, we can draw a line between CASS software products and the scientific accomplishment.
* Full citations should only appear in the Additional resources section at the end of the highlight -- otherwise they take up a lot of space with little actual information content (the DOI link is the useful thing).
* Generally, the second major section of the highlight should be an h2 heading "The enabling software" 
* Unless there is a strong reason, we should only highlight software that is part of the CASS software catalog
* We prefer to organize presentation of the CASS products by the topical areas.  These should be h3 heading using exactly the same string used in software catalog for the area.
* We prefer to discuss CASS software in terms of what it brings to the science or the application, as opposed to a generic "product X does A, B, and C" that is the same as found in the software catalog description. Where possible, it is good to mention capabilities the product implmented to support the application/science, and even better if it is possible to draw a line directly from the product to some science accomplishment.  These are ways of "personalizing" the content of the highlight to the application and the science so that highlights do not all end up reading the same.

### Software mentions

* When mentioning products included in the CASS software product catalog, the mention in the body text should use the include function shown below to create a link to the entry in the software catalog and the package name should be included in the `software_mentioned` list in the frontmatter of the highlight.  In both cases, the name of the software product must exactly match the name used in the software catalog, including capitalization.
* Ideally, the `sofware_mentioned` list should be in the same order that the products are named in the body.
* Mentions of software products *not* included in the CASS software product catalog should generally be minimized.  Where present, they should *not* be bolded.  Nor should they be linked, unless there is a strong reason.
* It is ***extremely*** important that the `software_mentioned` frontmatter be consistent with the actual software mentions in the body text.  The `software_mentioned` data is used to create a list of relevant Impact stories in the product pages of the software catalog.  The include file will display inline error messages where product names to not match the catalog or are not present in `software_mentioned`.  But there is no check to confirm that everything in `software_mentioned` is linked in the body text.

```
{% include sw-link-mention.html product="ADIOS" %}
```

### CASS member mentions

* When mentioning CASS member organizations, the mention in the body text should be in plain text and the member name name should be included in the `cass_members` list in the frontmatter of the highlight.  The body text should *not* be linked to anything.
* In the body text, CASS member organizations should be mentioned as succinctly as possible.  Probably in one place, maybe in the "The enabling software" intro text. Member names do not need to be prefixed with "CASS member organization" unless it is required to make sense in the text.
* The layout will place a list of the relevant CASS members supporting the software mentioned at the bottom of the highlight.

### Additional resources section

* If appropriate, an "Additional resources" h2 section may be included at the end of the document.  This is where you can include full citations to papers (if they're needed -- generally, if you can work the DOI link into the description of the work in the body, that should suffice).
* Don't overwhelm with Additional resources -- limit it to a small set that would be directly useful to the reader of the highlight. For example, if we provide a link to an application's website and/or their preferred literature citation, the reader will be able to find additional information about the application in those locations -- it is not our duty to provide *and curate* such information.

### Images

* Images are good to make things more visually interesting, but they come with some caveats:
  * Images should generally be science-related
  * They must include an explanatory caption
  * Image acknowledgements should be included (at the end of the caption) where requested by the image source
* Where feasible, they should be implemented in the source with the `figure` or `figure2` include function.  This will ensure consistency of presentation.
* Figures should generally be sized to cover *at most* 50% of the textwidth.  The `figure` and figure2` functions include a "popup" magnification capability that allows readers to get a closer look at the image if desired.
* Figures should use the `align-right` class.  The body text will wrap around the left side of the figure.
* In the source, figures that are not full-width generally need to be positioned *before* the text that is related to them for the positioning to work out optimally.

Style issues in question:

* We want to be able to highlight as much CASS software as we reasonably can, but we don't want to stretch too far. First-level dependencies should obviously be included.  But how far down the dependency graph should we go?  We need a consistent rule to follow.  Examples: ParaView and VisIt both depend on VTK-m, but far fewer applications depend directly on VTK-m. Further, ParaView and VisIt tend not to be *dependencies* per se, but external tools that users of the application may choose to use.  So when is it reasonable to reference VTK-m in a higlight?  The STEP tools are also generally going to be external tools, not dependencies in the strict sense.  A case can be made for a Gordon Bell winner that they must have used such tools in the analysis and tuning needed for the award, which would justify mentioning such tools.  But if we include similar statements in all of our highlights, it will start to get hackneyed.


## Styles of highlights

We support two basic styles of highlights: free-form and slide-based.  Both versions support arbitrary markdown content for the body of the highlight.  The primary differences are:

* Free-form highlights utilize a `teaser` field to designate an eye-candy image to associate with the highlight.
* Slide-based highlights display an image of the slide on the bottom of the highlight page, linked to a PDF of of the slide.  Both the image and the PDF should be in the `/assets/impacts/` directory with a name that is associated with the filename of the highlight itself.

## Filenames

We expect to publish many highlights, and the easiest way to identify which are the most recent is to include the date in the filename.  Consequently, all highlight files should have names of the form `YYYY-MM-topic.md`.  The date in the filename doesn't have to *exactly* correspond to the date of publication, but it should be close, and it should ensure that highlights on the same `topic` sort into the correct chronological order.

## Assets

Highlights are generally accompanied by images and other files.  They should be placed in `/assets/impacts/` and should be given a filename(s) that start with the same string as the highlight filename itself.  If there is more than one asset associated with a highlight, it is probably most convenient to create a directory in `/assets/impacts/` with *exactly* the same name as the highlight file itself, and then put then individual assets in that directory.  For a single file the directory is optional.

## Frontmatter for highlights

### `title` *(string)*

The title of the highlight.

### `date` *(ISO date)*

The date on which the highlight was published.  It will appear in the "Last updated" field at the bottom of the highlight page, as well as in the list of highlights.

### `teaser` *(image reference)*

The teaser is an image used as eye candy when the highlight is presented in a list of highlights or carousel.  It is typically, but not necessarily, an image that is also used in the body of the highlight.  The file must reside in `/assets/impacts`.

A `slide.image` entry will take precedence over a `teaser` if both are present.

### `slide` *(list)*

For highlights that are based on a Powerpoint slide, this list provides the base filenames for the image and PDF versions of the file.  The files must reside in `/assets/impacts/`.

```yaml
slide:
  - image: file1.jpg
  - file: file2.pdf
```

A `slide.image` entry will take precedence over a `teaser` if both are present.

### `authors` *(list)*

The name(s) of the authors of the highlight, in the form of a YAML list.  The authors are displayed at the bottom of the page, with the `acknowledgment`.

```markdown
authors:
  - Name One
  - Name Two
  - Name Three
```

### `acknowledgment` *(string)*

Acknowledgment of significant contributions from others (e.g., the application team), if appropriate. The acknowledgment is displayed at the bottom of the page, with the `authors`.

**Important guidance:**

  - The `acknowledgment` should *not* end with a period.

### `software_mentioned` *(list)*

A list of software products mentioned in the highlight.  These are generally expected to be products in the software catalog, but don't have to be.  In the current implementation of the site, entries that match product names will be linked to the product page, while those that don't will be displayed as plain text.

```yaml
software_mentioned:
  - Product1
  - product2
  - ProDUCT3
```

**Important guidance:**

* `software_mentioned` entries must match the `name` field in the `software` collection, including capitalization.

### `cass_members` *(controlled vocabulary)*

This field should be a list of CASS member organizations (also known as software stewardship organizations, or SSOs) which is providing stewardship support for the product.

The SSO names are a *controlled vocabulary*, defined in `members` structure in the file `_data/organization.yml`. We use the `short_name` values for the product's `cass_members` values, which the site will usually display as-is, but via the `members` structure, can also map into other information.  The `short_name` values correspond to the acronyms used by the member organizations and are case sensitive (e.g. "S4PST", not "s4pst").

## Content *(markdown text)*

The content of the highlight entry is completely up to the contributor, in both styles of highlight.

An excerpt of the content (currently the first 50 words) will be shown on the highlight list, so it is a good idea to lead with something to catch the reader's interest.

## Best practices

* Keys are case sensitive.

* `software_mentioned` entries must match the `name` field in the `software` collection, including capitalization.