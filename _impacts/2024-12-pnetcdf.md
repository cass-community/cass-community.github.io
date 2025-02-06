---
title: "I/O in WRF: Evaluating Modern Parallel I/O Techniques"
date: 2024-12-13
teaser: 2024-12-pnetcdf/pnetcdf-square.png
slide:
  - image: 2024-12-pnetcdf/pnetcdf.jpg
  - file: 2024-12-pnetcdf/pnetcdf.pdf
software_mentioned:
  - PnetCDF
  - HDF5
  - ADIOS
cass_members: 
  - RAPIDS
---
This work presents a comparative study of several parallel I/O implementations in the Weather Research and Forecasting model (WRF). The I/O libraries under study include {% include sw-link-mention.html product="PnetCDF" %}, {% include sw-link-mention.html product="HDF5" %} via NetCDF4, and {% include sw-link-mention.html product="ADIOS" %}. Our evaluation and performance analysis can guide I/O strategies for modern parallel codes.