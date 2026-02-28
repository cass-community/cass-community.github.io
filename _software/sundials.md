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
name: SUNDIALS
area: mathlibs
areas:
  - Mathematical libraries
cass_members:
  - FASTMath
description:  A library of time integrators and nonlinear solvers for ordinary differential equations (ODEs), differential-algebraic equations (DAEs), and nonlinear algebraic systems
long_description: |
    The SUNDIALS library of time integrators and nonlinear solvers provides robust and efficient numerical methods for ordinary differential equations (ODEs), differential-algebraic equations (DAEs), and nonlinear algebraic systems. SUNDIALS is freely available and developed on GitHub. SUNDIALS is comprised of following packages: ARKODE, a solver with one-step methods for stiff, nonstiff, mixed stiff-nonstiff, and multirate ODE systems; CVODE, a solver with Adams and BDF methods for stiff and nonstiff ODE systems; CVODES, an extension of CVODE with forward and adjoint sensitivity analysis capabilities for stiff and nonstiff ODE systems; IDA, a solver with BDF methods for DAE systems; IDAS, an extension of IDA with forward and adjoint sensitivity analysis capabilities for DAE systems; KINSOL, a solver for nonlinear algebraic systems. The SUNDIALS packages share many components and are organized as a family built on a common infrastructure including abstract interfaces for vectors, matrices, and algebraic solvers. Several implementations of these interfaces are provided with SUNDIALS supporting a range of parallel computing paradigms including shared-memory, distributed memory, and GPU computing.
target_audience: |
    The SUNDIALS time integration library is targeted towards scientists and engineers working on simulations involving systems of ordinary differential equations, differential algebraic equations, and nonlinear algebraic equations. SUNDIALS provides capabilities for these systems for users running simulations on hardware ranging from laptops to leadership class exascale supercomputers and is designed to be incorporated into existing codes.
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
e4s_product: sundials
spack_name: sundials
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
    url: https://computing.llnl.gov/projects/sundials
  - label: Repository
    url: https://github.com/LLNL/sundials
  - label: Downloads
    url: https://computing.llnl.gov/projects/sundials/sundials-software
  #
  # Duplicates a an end-user link, so favor that one
  #
  # - label: Documentation
  #   url: https://sundials.readthedocs.io/en/latest/index.html#
# A set of resources specifically aimed at users of the software (OPTIONAL)
#
end_user_resource_links:
  - label: Documentation
    url: https://sundials.readthedocs.io/en/latest/index.html#
  - label: Issue tracker
    url: https://github.com/LLNL/sundials/issues
  - label: Mailing list
    url: https://groups.google.com/g/sundials-users
#
# A set of resources specifically aimed at developers/contributors to the software (OPTIONAL)
#
developer_resource_links:
  - label: Developer guide
    url: https://sundials.readthedocs.io/en/latest/developers/index.html
  - label: Contributor guide
    url: https://sundials.readthedocs.io/en/latest/contributing/index.html
---