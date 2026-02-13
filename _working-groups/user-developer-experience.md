---
name: User-Developer Experience
description: Promote improved user-developer experiences
#
# Charter information: according to the by-laws, the following info is expected:
#   Purpose
#   Relationship to other working groups (as needed, not required by by-laws)
#   Lifetime
#   Expected membership
#   Reporting expectations
#   Additional information (as needed)
#
charter:
  purpose: |
    The User/Developer Experience (UDX) Working Group (WG) brings together groups and individuals interested in the science of scientific software development and use. UDX encompasses the experiences stakeholders have with libraries and tools used when creating code, as well as the end-user experience for software produced through those efforts. 

    The UDX WG organizes bi-monthly webinars to improve understanding of how users and developers interact with and experience scientific software. Webinars include content like tutorials, research talks, and experience reports; these are opportunities to better understand the status quo of user and developer experiences in research software, as well as opportunities for research software engineers (RSEs) and PIs to learn to assess or address UDX themselves. 

    In addition to webinars, the WG will host bi-monthly discussions open to anyone interested in UDX. To forge connections across the scientific software community, members of other software stewardship and research software organizations (e.g. PESO, US-RSE) are encouraged to attend. Discussions will be guided by community members and are expected to be informal, serving as opportunities to gather feedback or as a forum to share ideas and perspectives. 

    Topics for discussions and webinars include how documentation is presented and maintained; how applications are updated and installed; how code contributions from dispersed developers are managed and integrated; how tasks are arranged into workflows; how web, desktop, and command line interfaces are leveraged; how organizational policies are navigated, and beyond.

  relationships: |
    We will interact with the Metrics and Impact Framework WGs if we discover information that could inform efforts of these WGs or can ourselves benefit from their progress.  We will interact with the Software Ecosystem WG to improve the quality of ecosystem products and community activities.
  lifetime: Standing. Subject to annual review of needs and purpose.
  membership: Open
  reporting: Annually
  status: Active
  status_date: 2025-12-19
#
chair: # Can be more than one person
  - Hannah Cohoon
  - Drew Paine
#
meeting_schedule: Webinars on First Tuesday of odd months at 12:00pm Eastern; Informal discussion on First Tuesday of even months at 12:00pm Eastern
#
# A way of easily providing additional resource/links
#
additional_resource_links:
  - label: Working Group Event Calendar 
    url: https://calendar.google.com/calendar/u/0?cid=Y181YjFjNzU0MDE5MmU5ZTY2OTE1MDlkMGFjMWQzOWIzNmY3ZGIxNDNlNzRhMTBhMTRhOWEzY2Q3MDVmMTI1NzhmQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20
    icon: <i class="fa-solid fa-pen-to-square"></i>
  - label: Webinar Recordings
    url: https://www.youtube.com/@CASS.community/playlists
    icon: <i class="fa-brands fa-youtube"></i>
  - label: CASS Slack channel
    note: "#wg-udx"
    url: https://softwareecosy-91t5745.slack.com/archives/C076WTT3BPB
    icon: <i class="fa-brands fa-slack"></i>
  - label: US-RSE Slack channel
    note: "#wg-ux"
    url: https://usrse.slack.com/archives/C0664AMJBKQ
    icon: <i class="fa-brands fa-slack"></i>
  - label: "US-RSE #wg-ux Links and Resources"
    url: https://usrse.slack.com/canvas/C0664AMJBKQ?focus_section_id=VaZ9CA1ONGa
    icon: <i class="fa-regular fa-file-lines"></i>
  - label: "US-RSE #wg-ux Ways to Get Involved"
    url: https://usrse.slack.com/canvas/C0664AMJBKQ?focus_section_id=temp:C:VaZ842fac9ea4954c8b84b1c4638
    icon: <i class="fa-regular fa-file-lines"></i>
event_collection: events
series: "User/Developer Experience Webinars"
---
{% capture seminars_icon %}{% include icon-map-lookup label="Seminars" %}{% endcapture %}

## {{ seminars_icon}} {{ page.series }}

{% assign my_entries = site.events | where_exp: "post", "post.hidden != true" %}
{% assign my_entries = my_entries | where: "series", page.series %}

{% include show-event-collection.html entries=my_entries heading="h3" %}
