---
title: "Measurement and Analysis of GPU-accelerated Applications with HPCToolkit"
#
# startdate: "2026-02-10"
startdate: "2026-02-11"
# startdate: "2026-02-12"
#
# time: "11:00am - 12:30pm EST"
time: "1:00pm - 2:30pm EST"
# time: "3:00pm - 4:30pm EST"
#
location: Online
#
type: Birds-of-a-Feather Session 
series: 
  - "CASS BoF Days"
#
venue: "2026 CASS BoF Days"
#
activities:
  - "STEP"
#
registration-url: https://www.zoomgov.com/meeting/register/ABk354SbTeys75iKtzjCtA
#
presenters:
  - name: John Mellor-Crummey
    affiliation: Rice University
  - name: Yuning Xia
    affiliation: Rice University
  - name: Jonathon Anderson
    affiliation: Rice University
#
# artifacts:
#   - label: Slides
#     url: /assets/artifacts/cass-bof-days/
---
Do you write GPU-accelerated applications? Do you want to measure and analyze the performance of a GPU-accelerated application at large scale? Are you interested in analyzing and optimizing the performance of GPU kernels in a GPU-accelerated application? If so, this session is for you.

During the exascale computing project, the Linux Foundation's HPCToolkit Performance Tools were extended with support for profiling and tracing of GPU-accelerated applications to provide a high-level perspective of how and when your application uses GPUs within and across nodes in exascale platforms. In 2024, the ExaWind team used HPCToolkit to measure, analyze, and tune codes on 1K GPU-accelerated nodes of Frontier, which helped them improve Exawind's performance at scale by 24x.

Over the last year, HPCToolkit was enhanced with integrated support for instruction-level performance measurement of GPU-accelerated applications using PC sampling on AMD,  Intel, and NVIDIA GPUs. Using PC sampling, within kernels HPCToolkit can measure GPU cycles, instruction issues, instruction stalls, and stall reasons. HPCToolkit attributes instruction-level GPU performance measurements to heterogeneous calling contexts that include GPU kernels, GPU device functions, inlined code, loops, and statements within kernels.

Our goals for this session are

- to describe and demonstrate new and emerging capabilities for measurement and analysis of GPU-accelerated applications with HPCToolkit, 
- to show how you can use these tools on Aurora and Frontier, and 
- to discuss tool needs with developers of GPU-accelerated applications.
