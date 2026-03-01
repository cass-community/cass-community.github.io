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
#                           The recognized area labels are defined in `_data/sw-areas-new.yml`, and entries here must exactly match the `name` in that
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
name: Empirical Roofline Tool
areas:
  - Development tools
cass_members:
  - RAPIDS
description: Automates generation of roofline model for architecture-specific performance analysis and optimization 
long_description: |
    Roofline is a visually intuitive performance model created by Samuel Williams that is used 
    to bound the performance of various numerical methods and operations running on multicore, 
    manycore, or accelerator processor architectures. The Empirical Roofline Tool (ERT) 
    empirically determines the machine characteristics (CPU or GPU-accelerated) that are needed 
    to generate the machine characteristics for the roofline model.
target_audience: |
    Roofline models can be used to assess the quality of attained performance by combining 
    locality, bandwidth, and different parallelization paradigms into a single performance 
    figure. One can examine the resultant Roofline figure in order to determine both the 
    implementation and inherent performance limitations.
#
# License information, following https://spdx.org/licenses/
#
license_spdx: "BSD-3-Clause-LBNL"
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
#e4s_product: 
#spack_name:  
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
  # Website currently broken.  Waiting on Sam Williams to supply a new URL when it is ready
  - label: Website
    url: https://amcr.lbl.gov/departments/computer-science-department/ppan/roofline-performance-model/empirical-roofline-tool-ert/
  - label: Repository
    url: https://bitbucket.org/berkeleylab/cs-roofline-toolkit/src/master/
  # - label: Downloads
  #   url: 
  - label: Documentation
    note: (PDF)
    url: https://bitbucket.org/berkeleylab/cs-roofline-toolkit/raw/09663aad764d3c6cefa4d9de1f1213b5f03af9df/Empirical_Roofline_Tool-1.1.0/ERT_Users_Manual.pdf
---