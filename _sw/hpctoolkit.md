---
# Product information for CASS website product catalog
#
# INSTRUCTIONS
#   This is a Jekyll Markdown file, which starts with YAML "frontmatter." For the product 
#   catalog, we will be using only the YAML frontmatter (between the "---" seperators).  
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
#   area:                   (string) REQUIRED The technical area of the product.  For now, we are using
#                           the areas that were used by ECP ST, except that anything that was categorized as
#                           NNSA Software under ECP should instead be listed under the appropriate "real" area:
#                           Values include: "dataviz", "devtools", "mathlibs", "pmr", "sweco".  
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
name: HPCToolkit
area: devtools
cass_members:
  - STEP
description: A toolkit that supports measurement, analysis, attribution, and inspection of application performance on CPU and GPU-accelerated architectures
long_description: |
    HPCToolkit is an integrated suite of tools for measurement and
    analysis of program performance on computers ranging from
    multicore desktop systems to GPU-accelerated supercomputers.
    By using statistical sampling of timers and hardware performance
    counters on CPUs, HPCToolkit measures a program's CPU work, resource consumption, and inefficiency.
    It attributes performance metrics to the full calling context in which they
    occur. By monitoring GPU operations, gathering instruction-level
    metrics within GPU kernels, and attributing the costs of GPU
    work to heterogeneous calling contexts, HPCToolkit provides
    insight into the performance of GPU-accelerated codes. HPCToolkit
    works with multilingual, fully optimized, dynamically-linked applications. 
    HPCToolkit is designed for
    use on large parallel systems. HPCToolkit's presentation tools
    enable rapid analysis of a program's execution costs, inefficiency,
    and scaling characteristics both within and across nodes of a
    parallel system. HPCToolkit supports measurement and analysis
    of serial codes, multithreaded codes (e.g. pthreads, OpenMP), MPI,
    and hybrid (MPI+threads) parallel codes, as well as GPU-accelerated
    codes that offload computation to AMD, Intel, or NVIDIA GPUs.
target_audience: |
    HPCToolkit is designed for use by developers working on parallel
    applications, frameworks, runtime systems, and tools for CPU and GPU-accelerated systems. 
#
# PACKAGING INFORMATION
#   This information is used to connect your product with its E4S and Spack packages, if available.  It is only
#   needed under certain conditions:
#   e4s_product:    (string) Needed if the E4S name for your product is different than your preferred `name` of the product.
#                   If your product is not in E4S, uncomment and set the value to `nil`
#   spack_name:     (string) Needed if the Spack package name differs from the `e4s_product` name.
#                   If your product does not have a Spack package, uncomment and set the value to `nil`
#
e4s_product: hpctoolkit
spack_name:  hpctoolkit
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
# For additional information, see _sw/README.md.

additional_resource_links:
  - label: Website
    url: https://hpctoolkit.org
  - label: Repository
    url: https://gitlab.com/hpctoolkit/hpctoolkit
  - label: Downloads
    url: https://hpctoolkit.org/software.html
  - label: Documentation
    url: https://hpctoolkit.org/documentation.html
---
