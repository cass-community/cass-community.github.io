# README: A Contributor's Guide for CASS Events

This serves as a guide to anyone creating or working with events on the CASS website. It includes information about both the content of event files and the "house style" used on the CASS site. Stylistic notes are marked as such. They should be followed unless there's a compelling reason not to.

## What to contribute

## How to contribute

### Workflow

The preferred approach is to follow the usual GitHub pull request workflow:

- Fork the upstream repository <https://github.com/cass-community/cass-community.github.io>
- Develop your event
- Create and submit a pull request to the upstream repository
- The maintainers will review, iterate with you as necessary, and merge your pull request

The development and acceptance of your event will go faster if you have the ability to locally build and preview Jekyll sites, though the maintainers will work with you to get your event published regardless.

### Templates

The file `_events/TEMPLATE.md` is a bare-bones event file template which includes all the keys described below, but without any content for them.

You may prefer to find an existing event similar to the one you want to create to use as a starting point for your new event.

### Where to put your event file

All events should be in the `_events` directory. We use subdirectories to help keep things organized, usually associated with some of the long-running "series" by are one of the ways we group the events we organize, such as `bssw-tutorial` for the "Better Scientific Software tutorial" series, `hpcbp-webinars` for the "Best Practices for HPC Software Developers" webinar series, etc.

### File naming conventions

Regardless whether they're in the main directory or a subdirectory, event files should be given names that make them easy to identify and distinguish. You will see different naming conventions in different subdirectories, but generally, the give an indication of the series to which the event belongs or the host venue, the date on which the event occurred (or at least the year and month) and a short keyword or phrase identifying the topic. In some cases, for example SIAM conferences, each session has a unique identifier which is used visibly in the online agenda, etc. (for example, "MS22" where "MS" is short for minisymposium"). This contrasts with other events, such as the Supercomputing conferences, where there is a unique session ID, but it only appears in URLs, not in the public-facing program materials.

### Using the draft event capability

## Event file contents

### Overview

The source for events on the CASS website are markdown files with YAML frontmatter. As far as the event processing for he site goes, most of the pertinent information is contained in the frontmatter. Typically, the body contains only an abstract or description of the event. In some cases, everything necessary is contained in the frontmatter.

Note that CASS event files are often used in the construction of other website too.

- The <https://ideas-productivity.org/> (IDEAS) site uses the same event files
- The <https://bssw-tutorial.github.io/> site uses a pure YAML data file which is trivially converted into an IDEAS/CASS event file by adding the frontmatter delineators (`---`) before and after the file contents.
- The event pages on the <https://bit.ly/swe-cse-bof/> site are also structured to work as IDEAS/CASS events.

Such files often contain information which is not processed by the CASS site, but is used on these other sites. This interoperability is extremely useful in terms of reducing the level of effort required for events to appear in multiple relevant sites. Please be careful in modifying content which isn't used on the CASS site.

There are several categories of information found in CASS event files. Terms used in this overview will be explained in greater detail below.

- Essential information includes the title, time and date, and the registration URL. There is also some metadata which should be included in the event, such as the "type" of event and "series" to which it belongs, and the CASS "activities" responsible for organizing the event.
- If the event is part of a larger conference or workshop, information about the hosting "venue" should be provided.
- The people involved in the event, including presenters, panelists, moderators, organizers, as appropriate. It is also possible to provide brief bios for any of these people.
- Artifacts arising from the event. When we organize events, we have a strong desire that they should produce artifacts which can later be referenced by participants and others. Such artifacts should be included in the event file as they become available, which of course is generally after the event has occurred.
- The body of the event file generally provides the description or abstract of the event.

### Essential information

#### `startdate` (REQUIRED)

The starting date of the event, in ISO 8601 format ("YYYY-MM-DD").

#### `enddate` (optional)

The end date of the event, in ISO 8601 format ("YYYY-MM-DD"). The `enddate` is not needed for single-day events.

#### `time` (optional)

The time frame for the event. Despite being technically optional, nearly all events will include a `time` entry. Exceptions would be multi-day events for which the time varies by day, or "umbrella" events which provide additional information about a group of events taking place in the same venue.

The `time` field should follow a specific structure:
"*starttime* - *endtime* *timezone*"

- *starttime* and *endtime* must be 12-hour time representations
  - with the meridian in lowercase ("am" or "pm")
  - with **no spaces** between the time and the meridian
- *starttime* and *endtime* must be separated by a dash ("-") with a space on either side

*Rationale:* The above requirements come into play when there are multiple events on the same day. The event listing machinery breaks down the `time` so that the events can be ordered by *starttime* and then secondarily by *endtime*.  If you don't follow the requirements, you may notice that events on the same day don't display in an order that you would expect.

- *timezone* must be an officially-recognized time zone abbreviation
- *timezone* must be correct with respect to daylight vs. standard time
- For conferences and such, *timezone* should be the same one used to display times on the venue program information

*Rationale:* The above requirements are intended to ensure there is no ambiguity in the timing of the event, recognizing that readers may be anywhere in the world. The website <https://timeanddate.com> is an excellent resource for ensuring you get the timezone right.

Good examples:

- "9:45am - 11:25am CST"
- "1:00pm - 2:00pm EDT"
- "9:30am - 4:30pm JST"

Bad examples:

- "9:45 am - 11:25 am CST" (spaces between time and meridian)
- "1:00pm-2:00pm EDT" (no spaces around dash)
- "1:00pm - 2:00pm ET" (not a proper timzone designation)

#### `registration_url` (optional)

The url at which readers can register for the event, or which provides more information about the registration process. The field is expected for most upcoming events, but may be omitted if you're adding past events for completeness. If the event is hosted in a larger venue (i.e., a conference), it is probably the overall venue registration link.

If the `registration_url` is present, the site will generally render it as a button labeled "Register for the event".

#### `location` (REQUIRED)

The location of the event.

*Style notes:* Locations will be one of three types, formatted as follows:

- In-person only: "City, State" for events in the US, or "City, Country" otherwise. Spell out the state or the country rather than using abbreviations.
- Online only: "Online". Do *not* use "Virtual"
- Hybrid: "City, State, and online" or "City, Country, and online". Note comma after state or country and lowercase "online".

#### `type` (REQUIRED)

The type or format of the event. We display the `type` near the title of the event in order to give the reader a better idea of what type of event they're looking at. You should generally try to use the same types as for other events on the site for consistency, but it is okay to create new types if none of the existing ones fit.

The CASS site currently uses the following:

- Tutorial
- Webinar
- Birds-of-a-Feather Session
- Minisymposium

Additional reasonable examples include:

- Conference
- Workshop
- Online Panel Discussion
- Panel Discussion
- Paper Session

*Style note:* types should be very short and should be in title case.

#### `series` (REQUIRED)

To aid reader navigation and association of related events, we also associate each event with a `series`, which is usually a "branded" collection of events which are in some way related. `series` is intended to be distinct from `type`, though in some cases, all events in a series will be of the same type.

The CASS site also displays pages listing the events for specific series, along with additional descriptive information based on the corresponding pages in the `_event-series` collection. In this way, readers can focus on a particular series of events which may interest them, or share links to a particular series with colleagues.

The CASS site currently uses the following:

- BSSw Tutorials
- CASS BoF Days
- HPC Best Practices Webinars
- Technical Sessions and Meetings
- User/Developer Experience Webinars

The "Technical Sessions and Meetings" series tends to be a catch-all, covering many different `type`s of events, whereas the others will (naturally) be of a single `type`. But not everything of `type == "Birds-of-a-Feather Session"` is necessarily part of the `series == "CASS BoF Days"` series.

New series can be created as appropriate. If you create a new series, you're strongly encouraged to also create a page for it in the `_event-series` collection.

Filtering by `series` is based on exact matching.

*Style note:* series names should be short and should be in title case.

#### `activities` (REQUIRED)

The `activities` field is used to designate the CASS member organizations and/or working groups which have been involved in organizing the event. (The name of the field is a hold-over from terminology used on the IDEAS site.) The field may contain multiple entries.

At present, the `activities` field is not displayed on any public pages, and the information is intended for internal use within CASS.

This data is not currently validated in any way. However, for member organizations, you are strongly encouraged to match the `site.data.organization.members.short_name` entries found in the `_data/organization.yml` file). Working group names probably ought to be standardized against the `name` in the `_working-groups` collection, but current WG-led events don't conform.

### Venue information

### People information

### Artifact information

### Event body
