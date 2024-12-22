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
#   cass_member:            (string) REQUIRED The name of the CASS member organization (aka software stewardship
#                           organization) you are associated with. Values include: "fastmath", "peso", "rapids", "s4pst", "step".
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
name: Dyninst Binary Analysis and Instrumentation Toolkit
area: devtools
cass_member: step
description: Toolkit that provides analysis, instrumentation, and code modification across a variety of CPU and GPU architectures.
long_description: |
    Dyninst is a toolkit for performing analysis, instrumentation, and code modification of binary code.
    It can operate on a wide variety of binaries, providing the ability to instrument code for purposes
    as debugging, performance profiling, tracing, testing, and security hardening. Dyninst can operate
    statically (binary rewriting), taking an binary file as input, parsing it, and then producing as
    ouput the instrumented binary file. It can also operate dynamically (dynamic instrumentation),
    analyzing the code in a running program (process) and then modifying the code on the fly. Dyninst
    is opportunistic in that it can use the full debug information available in a binary or it can
    run on completely stripped binaries. Dyninst provides a vareity of toolkits that include instruction
    decoding, control flow analysis, dataflow analysis, code generation, code patching, stack walking,
    and process control. It currently supports analysis and instrumentation for the x86-64,
    ARM (32 and 64 bit), and Power architectures. Dyninst also supports code analysis of AMD GPU
    architectures (GFX908, GFX90A, and GFX940), with code instrumentation capability available soon.
target_audience: |
    Dyninst is intended to support tool builders across a wide variety of areas, including debugging,
    performance profiling, code analysis, testing, and software security.
#
# PACKAGING INFORMATION
#   This information is used to connect your product with its E4S and Spack packages, if available.  It is only
#   needed under certain conditions:
#   e4s_product:    (string) Needed if the E4S name for your product is different than your preferred `name` of the product.
#                   If your product is not in E4S, uncomment and set the value to `nil`
#   spack_name:     (string) Needed if the Spack package name differs from the `e4s_product` name.
#                   If your product does not have a Spack package, uncomment and set the value to `nil`
#
e4s_product: dyninst
spack_name:  dyninst
#
# ADDITIONAL PRODUCT INFORMATION
#   These OPTIONAL keys will allow your catalog entry to link to further information that visitors may find useful
#
#   repository:     (URL) Public repository for the product
#   source:         (URL) Public source code download for the product
#   documentation:  (URL) Publicly available documention page/site for the product
#   website:        (URL) Public website for the product
#
repository: https://github.com/dyninst/dyninst/
source: https://github.com/dyninst/dyninst/
documentation: https://github.com/dyninst/dyninst/releases/latest
website: https://www.paradyn.org/
---
