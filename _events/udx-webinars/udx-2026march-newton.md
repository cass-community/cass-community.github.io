---
#Template based on https://cass.community/events/hpcbp-094-sustainable-sw
startdate: "2026-03-03"
time: "12:00 pm - 1:00 pm EDT" # Ensure that time zone is correct with respect to standard/daylight time
#
title: "AI teamwork and tooling for RSEs"
#
#CHOOSE THE APPROPRIATE SPEAKER CATEGORIES TO INCLUDE:
presenters:
  - name: Olivia Newton
    affiliation: University of Montana
    bio: |
      Olivia B. Newton is a researcher and instructor at the University of Montana, where she examines teamwork in science and engineering. Alongside her research, she teaches courses on Python and statistics.
  - name: Andrew Schmeder
    affiliation: Lawrence Berkeley National Lab
    bio: |
      Andrew Schmeder is a Science IT Consultant at Berkeley Lab where he helps scientists utilize high-performance computing and AI inference services to facilitate basic energy science and deep-tech research. He is the creator of the Lab’s CBorg AI Services Portal, and a member of the AmSC Intelligent Interfaces Group. His expertise includes full stack web development, agentic AI, LLM inference servers, Kubernetes application development, scientific programming, patent strategy, real-time signal processing, microelectronics, graphic design, and more. Email: <mailto:awschmeder@lbl.gov>, LinkedIn: <https://linkedin.com/in/andrew-schmeder>.

#
# panelists:
#   - name: FIXME
#     affiliation: FIXME
#     github-id: FIXME
#     bio: |
#       FIXME
# #
# moderators:
#   - name: FIXME
#     affiliation: FIXME
#     github-id: FIXME
#     bio: |
#       FIXME
#
#
registration-url: https://lbnl.zoom.us/meeting/register/uecckzcDSO6FIaQuMMhMvg
#
# artifacts:
#   - label: Recording
#     format: YouTube
#     yt-video-id: FIXME
#   - label: Slides
#     format: FIXME
#     url: FIXME
#
#
#
# Items that change rarely
organizers:
  - name: Johanna (Hannah) Cohoon
    affiliation: Lawrence Berkeley National Lab
    github-id: jlcohoon
    bio: |
      Johanna (Hannah) Cohoon is a User Experience Researcher at [LBNL](https://scidata.lbl.gov/), seeking to create more rewarding and impactful careers for research software engineers and more efficient and enjoyable experiences for users. She has focused on studying and facilitating open source development, open science practices, and data intensive workflows. Hannah earned her PhD from the University of Texas at Austin. 
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

<!-- **Abstract:** FIXME -->

**Olivia Newton presents:** A survey of teamwork, AI, and their integration in scientific computing: Preliminary findings

We report results of survey and interview research conducted with 79 scientists and software professionals to better understand current practices, needs, and challenges related to teamwork and AI use in scientific computing. Study participants reported mixed awareness of best practices for effective teamwork and expressed interest in training on topics across team science, software engineering, and AI use. Although most participants reported using AI, less than half indicated that their teams engage in conversations about policies for AI use in their collaborative work. Our results further suggest that there is no clear consensus on the best applications for AI in scientific computing to date. Lastly, we discuss the ways that AI is altering team dynamics and development processes. Together, these findings highlight opportunities to strengthen cross-disciplinary collaboration and team-based scientific software practices.

**Andrew Schmeder presents:** Scientific Coding with AI - SciCode Bench Insights & Agentic Workflows

Can LLMs actually perform “PhD-level” tasks - specifically in scientific coding - as claimed by AI companies? Recent advances have enabled the majority of UI and infrastructure code to be automated using AI, but can it write scientific code? In this short talk, we will review the results from running the SciCode benchmark on 60 different model configurations over the past 9 months on Berkeley Lab’s CBorg AI inference gateway. Insights regarding evals, optimizing inference costs, performance of open-weight versus commercial flagship models, and measuring the rate of model improvement will be discussed. In the second half, we will look at a demo of an autonomous scientific agent that can perform data discovery, data transfers and data analysis via a chat interface.
