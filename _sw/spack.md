---
name: Spack
area: sweco
cass_member: peso
description: |
    A flexible package manager that supports multiple versions, configurations, platforms,
    and compilers.
long_description: |
    Spack is a multi-platform, language-agnostic package manager that builds and
    installs multiple versions and configurations of software. It works on Linux, macOS,
    Windows, and many supercomputers. Spack is non-destructive: installing a new version
    of a package does not break existing installations, so many configurations of the
    same package can coexist.

    Spack offers a simple syntax that allows users to specify versions and configuration
    options. Package files are written in Python, and users can create reproducible
    "environments" that allow many packages to be integrated and deployed together.
    Spack can build packages from source, create binary packages, and also has supports
    reproducible developer workflows and continuous integration.

    Spack has a built-in library of over 8,000 package recipes and an active community
    of over 1,400 contributors.
target_audience: |
    Spack can be used on any machine from a laptop to a high performance cluster. It can
    be used by individuals who want to install and use software, by developers who
    maintain many different software packages, and by large teams or facilities who want
    to deploy software on shared systems for many users. Package authors can add their
    packages to Spack to make them more easily available to their user base.
e4s_product: spack
spack_name: spack
repository: https://github.com/spack/spack
# I don't know what "source" is for if "repository" exists.
#   source:         (URL) Public source code download for the product
documentation: https://spack.readthedocs.io
website: https://spack.io/
---
