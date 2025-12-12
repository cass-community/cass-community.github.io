---
# Product information for CASS website product catalog
#
# INSTRUCTIONS
#   This is a Jekyll Markdown file, which starts with YAML "frontmatter." For the product
#   catalog, we will be using only the YAML frontmatter (between the "---" seperators).
#   Please leave the main body empty.
#
#   Please name the file itself for the software product: <name>.md (all lowercase)
#
#   We've tried to require the minimum, but anything optional you choose to add will enrich your
#   product's entry in the catalog.  To provide optional items, please uncomment the keys and complete
#   the value appropriately.
#
#   Please see the accompanying README.md for more detailed information and guidance.
#
# BASIC PRODUCT INFORMATION (ALL REQUIRED)
#   name:                   (string) REQUIRED The name under which your product should appear in the catalog
#   area:                   (string) REQUIRED The technical area of the product.  For now, we are using
#                           the areas that were used by ECP ST, except that anything that was categorized as
#                           NNSA Software under ECP should instead be listed under the appropriate "real" area:
#                           Values include: "dataviz", "devtools", "mathlibs", "pmr", "sweco".
#                           We also support the values used in e4s.yml files, though we prefer those above.
#   cass_member:            (list) REQUIRED The names of the CASS member organizations (aka software stewardship
#                           organizations) you are associated with. Values include: "FASTMath", "PEOS", "RAPIDS", "S4PST", "STEP".
#                           (other CASS members are not stewarding software products, as far as we know: COLABS, CORSA, SWAS)
#   description:            (string) REQUIRED A short description of your software.  The `description` is always shown immediately
#                           after the `name` and they should be considered together as, in effect constructing a sentence-length
#                           description of the product with the form `name: desciption`.  However it does not need to be a complete
#                           sentence in the grammatical sense.  Key points: The `description` should *not* repeat the `name`, it
#                           should be in sentence case, and it should *not* end with a period.
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
name: MFEM
area: mathlibs
cass_members:
  - FASTMath
description: High-performance finite element library
long_description: |
    MFEM is an advanced finite element library that provides high-performance meshing, discretization and solver algorithms
    for HPC simulations on unstructured grids. It is the simulation engine for many DOE application codes and has a large user
    community in the national labs, industry, and academia. MFEM has state-of-the-art support for high-order methods, GPU acceleration,
    AMR, matrix-free solvers, etc. It is highly scalable on a wide variety of platforms, ranging from laptops to supercomputers.
target_audience: |
    MFEM can accelerate HPC application on unstructured grids, particularly large-scale simulations of partial differential equations
    on GPU platforms. This is of interest to both industry and many projects in the DOE. MFEM is particularly impactful in multi-physics
    problems, or when high accuracy or robustness is required. In addition, MFEM can be used for research and teaching in academia.
#
# OpenSSF Best Practices project ID (as found on https://www.bestpractices.dev/en/projects)
#
openssf_bestpractices_id: 
#
foundation_membership: NumFOCUS
#
# PACKAGING INFORMATION
#   This information is used to connect your product with its E4S and Spack packages, if available.
#   e4s_product:    (string) If your product is in E4S, list its e4S name here (may be different than `name`). If your
#                   product is not in E4S, comment out this entry.
#   spack_name:     (string) The name of your spack package(s), if available.  If you don't have a Spack package, comment out this
#                   entry. If your product has multiple Spack packages, list them using YAML list syntax:
#                   spack_name:
#                       - package1
#                       - package2
#                       - package3
#
e4s_product: mfem
spack_name: mfem
#
# ADDITIONAL PRODUCT INFORMATION
#   These are OPTIONAL lists of resource links that you can provide to make your catalog entry more useful.
#   The typical set includes: Website, Repository, Downloads, and Documentation, but all of these are optional, and
#   you can also add other labels.   `additional_resource_links` is a general category; `end_user_resource_links` and
#   `developer_resource_links` are meant to target the named groups more specifically.  Use them as you like.
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
#
additional_resource_links:
   - label: Website
     url: https://mfem.org
   - label: Repository
     url: https://github.com/mfem/mfem
   - label: Downloads
     url: https://mfem.org/download
   - label: Documentation
     url: https://docs.mfem.org/
#
# A set of resources specifically aimed at users of the software (OPTIONAL)
#
end_user_resource_links:
  - label: Examples
    url: https://mfem.org/examples
  - label: Tutorials
    url: https://mfem.org/tutorial
  - label: Videos
    url: https://mfem.org/videos
  - label: Workshop
    url: https://mfem.org/workshop
  - label: Seminars
    url: https://mfem.org/seminar
#
# A set of resources specifically aimed at developers/contributors to the software (OPTIONAL)
#
developer_resource_links:
  - label: Contributor guide
    url: https://github.com/mfem/mfem/blob/master/CONTRIBUTING.md
  - label: How-to articles
    url: https://mfem.org/howto/howto-index/
  #
  # Duplicates a resource above
  # - label: Documentation
  #   note:  (Doxygen)
  #   url: https://docs.mfem.org
---
