---
#Template based on https://cass.community/events/hpcbp-094-sustainable-sw
startdate: "2025-07-01"
time: "12:00 pm - 1:00 pm EDT" # Ensure that time zone is correct with respect to standard/daylight time
#
title: "Usability of Cloud for HPC Applications"
#
#CHOOSE THE APPROPRIATE SPEAKER CATEGORIES TO INCLUDE:
presenters:
  - name: Vanessa Sochat
    affiliation: Lawrence Livermore National Lab
    #github-id: FIXME
    #bio: |
#
#
#
#registration-url:  https://lbnl.zoom.us/meeting/register/uecckzcDSO6FIaQuMMhMvg
#
artifacts:
  - label: Recording
    format: YouTube
    yt-video-id: 8wVaBBsUmAI
  - label: Slides
    format: PDF
    url: https://doi.org/10.5281/zenodo.15792880
#
# Items that change rarely
organizers:
  - name: Johanna (Hannah) Cohoon
    affiliation: Lawrence Berkeley National Lab
    github-id: jlcohoon
    bio: |
      Johanna (Hannah) Cohoon is a User Experience Researcher at [LBNL](https://scidata.lbl.gov/), seeking to create more rewarding and impactful careers for research software engineers and more efficient and enjoyable experiences for users. She has focused on studying and facilitating open source development, open science practices, and data intensive workflows. Hannah earned her PhD from the University of Texas at Austin. Hannah leads the CASS UDX working group.
#
location: Online
#
type: Webinar
series:
  - "User/Developer Experience Webinars"
activities:
  - "UDX Working Group"
#
---
*User/Developer Experience Webinars feature speakers who highlight best practices and challenges for usable scientific software. Have a suggestion for a future meeting? Use [this Google form](https://docs.google.com/forms/d/e/1FAIpQLSe0ss98Bh1otRaleBii_LcADeGeGvluav6O3oxFIwZo6d4Xzg/viewform) to propose ideas.*

The rise of AI and the economic dominance of cloud computing have created a new nexus of innovation for high performance computing (HPC). In addition to performance needs, scientific workflows increasingly demand capabilities of cloud environments: portability, reproducibility, dynamism, and automation. Geopolitical changes that lead to cuts in scientific spending paired with resource contention introduce the new reality that portability is a new metric of performance. A strategy planning for flexible movement requires understanding of the strengths and weaknesses of different converged environments for the needs of HPC. In this talk I will present a cross-cloud usability study that assessed 11 different HPC proxy applications and benchmarks across three clouds (Microsoft Azure, Amazon Web Services, and Google Cloud), six environments, and two compute configurations (CPU and GPU), performing scaling tests of applications in all environments up to 28,672 CPUs and 256 GPUs. I will present insights for usability, work needed, and lessons learned from such an ambitious undertaking, and hope to inspire discussion about future vision for orchestration of HPC applications in cloud.
