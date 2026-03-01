---
# Product information for CASS website product catalog
#
# INSTRUCTIONS
#   This is a Jekyll Markdown file, which starts with YAML "frontmatter." For the product 
#   catalog, we will be using only the YAML frontmatter (between the "---" separators).  
#   Please leave the main body empty.  
#
#   Please name the file itself for the software product: <name>.md
#
#   We've tried to require the minimum, but anything optional you choose to add will enrich your
#   product's entry in the catalog.  To provide optional items, please uncomment the keys and complete
#   the value appropriately.
#
#   Some keys are specifically chosen to match those in the e4s.yaml schema (ignoring case) 
#   with the expectation that they should have the same content (and probably will eventually be merged).
#
#
# BASIC PRODUCT INFORMATION (ALL REQUIRED)
#   name:                   (string) REQUIRED The name under which your product should appear in the catalog
#   areas:                  (list) REQUIRED Each product must be associated with at least one area; multiple areas should be listed as appropriate.
#                           Multiple areas should be listed in priority order -- the most relevant label, second most, etc.
#                           The recognized area labels are defined in `_data/sw-areas.yml`, and entries here must exactly match the `name` in that
#                           file, including both spelling and case.
#   cass_member:            (list) REQUIRED The names of the CASS member organizations (aka software stewardship
#                           organizations) you are associated with. Values include: "fastmath", "PESO", "RAPIDS", "S4PST", "STEP".
#                           (other CASS members are not stewarding software products, as far as we know: colabs, corsa, swas)
#   description:            (string) REQUIRED A one-sentence description of your software.  To be used as a
#                           "subtitle", following the `name`.
#   long_description:       (multiline string) REQUIRED A one-paragraph description of your software. A brief, moderately technical description 
#                           of your software's primary features and capabilities.
#   target_audience:        (multiline string) REQUIRED A one-paragraph description of who should be interested in your software.  This should be
#                           less technical than the description -- meant to guide someone who's inexpert or just trying to 
#                           figure out who might be using the software.
#
# Note on multline string entries (long_description and target_audience): YAML supports a multiline string entry that allows 
# a value to be a paragraph (or several).  A multiline string value starts with a pipe ("|") following the colon of the key, with
# the text of the value starting on the following line.  The entirety of the value should be indented by 2-4 spaces from the
# left margin.  The value ends at the next outdented text (or comment).
#
name: VisIt
areas:
  - Data and visualization
cass_members:
  - RAPIDS
description: An open source, interactive, scalable, visualization, animation and analysis tool.
long_description: |
    VisIt is a free, open source, platform-independent, distributed, parallel visualization tool for visualizing data defined on
    two- and three-dimensional structured and unstructured meshes. VisIt’s distributed architecture allows it to leverage both
    the compute power of a large parallel computer and the graphics acceleration hardware of a local workstation. VisIt’s user
    interface is often run locally on a Windows, Linux, or macOS desktop computer while its compute engine component runs in
    parallel on a remote computer. VisIt’s distributed architecture allows VisIt to visualize simulation data where it was
    generated, eliminating the need to move the data to a visualization server. VisIt can be controlled by its Graphical User
    Interface (GUI), through the Python and Java programming languages, or from a custom user interface you develop yourself.
target_audience: |
    VisIt is a scalable production visualization and analysis tool widely used throughout DOE. It is designed to support visualization at scale.
#
# License information, following https://spdx.org/licenses/
#
license_spdx: "BSD-3-Clause"
#
# OpenSSF Best Practices project ID (as found on https://www.bestpractices.dev/en/projects)
#
openssf_bestpractices_id: 
#
# PACKAGING INFORMATION
#   This information is used to connect your product with its E4S and Spack packages, if available.  It is only
#   needed under certain conditions:
#   e4s_product:    (string) Needed if the E4S name for your product is different than your preferred `name` of the product.
#                   If your product is not in E4S, uncomment and set the value to `nil`
#   spack_name:     (string) Needed if the Spack package name differs from the `e4s_product` name.
#                   If your product does not have a Spack package, uncomment and set the value to `nil`
#
e4s_product: visit
spack_name: visit
#
# ADDITIONAL PRODUCT INFORMATION
#   This is an OPTIONAL list of resource links that you can provide to make your catalog entry more useful.
#   The typical set includes: Website, Repository, Downloads, and Documentation, but all of these are optional, and
#   you can also add other labels.
#
#   The essential inputs are structured as follows:
#     - label: Resource label           # REQUIRED
#       url: https://example.com        # REQUIRED
#       note: (additional info)         # OPTIONAL
#       icon: fa-solid fa-font-awesome # OPTIONAL, a FontAwesome icon identifier
#
#   Which would appear as (in pseudo-markdown):
#     {{ icon }} [{{ label }}]({{ url }}) {{ note }}
#
# For additional information, see _software/README.md.

additional_resource_links:
  - label: Website
    url: https://visit.llnl.gov/
  - label: Repository
    url: https://github.com/visit-dav/visit
  - label: Downloads
    url: https://visit-dav.github.io/visit-website/releases-as-tables/
  - label: Documentation
    url: https://visit-sphinx-github-user-manual.readthedocs.io/en/develop/getting_help/index.html
---
