# README for CASS Events

Please see the contributor's guide at <http://cass.community/contributing/> and the event portion of the guide specifically <http://cass.community/contributing/events> for detailed guidance on how to create events for the website.

## Templates

The file `TEMPLATE.md` file in this directory is a bare-bones event file template which includes all the keys supported by the site, but without any content for them.

You may prefer to find an existing event similar to the one you want to create to use as a starting point for your new event.

## Where to put your event file

All events should be in the `_events` directory. We use subdirectories to help keep things organized, usually associated with some of the long-running "series" by are one of the ways we group the events we organize, such as `bssw-tutorial` for the "Better Scientific Software tutorial" series, `hpcbp-webinars` for the "Best Practices for HPC Software Developers" webinar series, etc.

## File naming conventions

Regardless whether they're in the main directory or a subdirectory, event files should be given names that make them easy to identify and distinguish. You will see different naming conventions in different subdirectories, but generally, the give an indication of the series to which the event belongs or the host venue, the date on which the event occurred (or at least the year and month) and a short keyword or phrase identifying the topic. In some cases, for example SIAM conferences, each session has a unique identifier which is used visibly in the online agenda, etc. (for example, "MS22" where "MS" is short for minisymposium"). This contrasts with other events, such as the Supercomputing conferences, where there is a unique session ID, but it only appears in URLs, not in the public-facing program materials.