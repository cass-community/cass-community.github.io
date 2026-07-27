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
# BASIC PRODUCT INFORMATION (ALL REQUIRED)
#   name:                   (string) REQUIRED The name under which your product should appear in the catalog
#   areas:                  (list) REQUIRED Each product must be associated with at least one area; multiple areas should be listed as appropriate.
#                           Multiple areas should be listed in priority order -- the most relevant label, second most, etc.
#                           The recognized area labels are defined in `_data/sw-areas.yml`, and entries here must exactly match the `name` in that
#                           file, including both spelling and case.
#   cass_member:            (list) REQUIRED The names of the CASS member organizations (aka software stewardship
#                           organizations) you are associated with. Values include: "FASTMath", "LEADS", "PESO", "RAPIDS", "S4PST", "STEP".
#                           (other CASS members are not stewarding software products, as far as we know: colabs, corsa, swas)
#   description:            (string) REQUIRED A one-sentence description of your software.  To be used as a
#                           "subtitle", following the `name`.
#   long_description:       (multiline string) REQUIRED A one-paragr aph description of your software. A brief, moderately technical description
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
name: TAGTorch
areas:
  - Artificial intelligence
cass_members:
  - LEADS
description: This package provides a comprehensive suite of tools for analyzing and leveraging symmetry, equivariance, and topological properties in PyTorch deep learning models
long_description: |
    Topology, Algebra, and Geometry Torch (TAGTorch) is an open-source PyTorch library that provides
    reusable implementations of geometry-, topology-, and symmetry-based methods for machine
    learning.
    The library brings together tools for building mathematically informed neural networks as well
    as analyzing datasets and trained models through a unified, PyTorch-native interface.
target_audience: |
    TAGTorch is designed for both machine learning researchers and domain scientists interested in
    incorporating mathematically grounded methods into existing PyTorch workflows without requiring
    expertise in computational topology, differential geometry, or group theory.
#
# License information, following https://spdx.org/licenses/
#
license_spdx: "BSD-2-Clause"
#
# OpenSSF Best Practices project ID (as found on https://www.bestpractices.dev/en/projects)
#
openssf_bestpractices_id:
#
# PACKAGING INFORMATION
#   This information is used to connect your product with its E4S and Spack packages, if available.  It is only
#   needed under certain conditions:
#   e4s_product:    (string) If your product is not in E4S, leave empty or comment out the key
#   spack_name:     (string) If your product does not have a Spack package, leave empty or comment out the key
#
e4s_product:
spack_name:
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
  - label: Repository
    url: https://github.com/hkvinge/tagtorch
    # note: "(main repository)"
  - label: Documentation
    url: https://github.com/hkvinge/tagtorch/blob/main/README.md
---
