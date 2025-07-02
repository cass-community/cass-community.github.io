---
title: Internal Calendar
excerpt: "Not intended for public use"
permalink: /internal/calendar
layout: single
classes: wide no-left-sidebar
header:
#   overlay_color: "#000"
#  overlay_filter: "0.60"
  overlay_filter: rgba(0, 146, 202, 0.75) # Same color as "air" skin footer
  overlay_image: /assets/images/tim-mossholder-GmvH5v9l3K4-unsplash.jpg
  caption: 'Photo by <a href="https://unsplash.com/@timmossholder">Tim Mossholder</a> on <a href="https://unsplash.com/photos/cogs-and-gears-GmvH5v9l3K4">Unsplash</a>'
---
*The resources linked from this page are intended for internal use by CASS members. Nothing in the internal tree should be linked from any public webpage.*

## Officer election deadlines

Per the by-laws, officers serve a term of **{{ site.data.organization.officers_term | default: '<em><font color="red">missing data</font></em>' }}** days.
For the purposes of this page, the term is set by the variable `officers_term` in the file `_data/organization.yml`. ({% include github_edit_link path="_data/organization.yml" %})

Due dates within 30 days are highlighted in blue. Overdue items are highlighted in red. (From last site build: {{ site.time | date: "%F" }})

{% assign cal = "" | split: "|" %}
{% for o in site.data.organization.officers -%}
  {%- capture expiration %}{% include days-ahead date=o.elected days=site.data.organization.officers_term %}{% endcapture -%}
  {% assign line = expiration | append: "|" | append: o.position | append: "|" | append: o.name | append: "|" | append: o.elected %}
  {% assign cal = cal | push: line %}
{% endfor %}
{% assign cal = cal | sort %}

| Election Due | Position | Person | Elected
|:-------------|:---------|:-------|:-------
{% for line in cal %}
  {%- assign fields = line | split: "|" -%}
  {%- assign expiration = fields[0] -%}
  {%- capture remaining %}{% include days-left date=expiration %}{% endcapture -%}
  {%- assign remaining = remaining | plus: 0 -%}
  {%- if remaining < 0 %}
    {% assign expiration = expiration | prepend: '<em><font color="red">' | append: '</font></em>' %}
  {% elsif remaining < 30 %}
    {% assign expiration = expiration | prepend: '<em><font color="blue">' | append: '</font></em>' %}
  {% endif -%}
  {{ expiration }} | {{ fields[1] }} | {{ fields[2] }} | {{ fields[3] }}
{% endfor %}

## Working group review deadlines

Per the by-laws, provisional working groups should be reviewed after **{{ site.data.organization.wg_reviews.provisional | default: '<em><font color="red">missing data</font></em>' }}** days and active working groups should be reviewed every **{{ site.data.organization.wg_reviews.active | default: '<em><font color="red">missing data</font></em>' }}** days.  Retired working groups do not require on-going review.
For the purposes of this page, these terms are set by the variable `wg_reviews` in the file `_data/organization.yml`. ({% include github_edit_link path="_data/organization.yml" %})

Due dates within 30 days are highlighted in blue. Overdue items are highlighted in red. (From last site build: {{ site.time | date: "%F" }})

{% assign cal = "" | split: "|" %}
{% for wg in site.working-groups %}
  {%- if wg.charter.status == "Provisional" %}
    {%- capture expiration %}{% include days-ahead date=wg.charter.status_date days=site.data.organization.wg_reviews.provisional %}{% endcapture -%}
  {% elsif wg.charter.status == "Active" %}
    {%- capture expiration %}{% include days-ahead date=wg.charter.status_date days=site.data.organization.wg_reviews.active %}{% endcapture -%}
  {% elsif wg.charter.status == "Retired" %}
    {%- assign expiration = "9999-12-31" -%}
  {% endif -%}
  {%- capture name %}[{{ wg.name }}]({{ wg.url }}){% endcapture -%}
  {%- assign chair = wg.chair | array_to_sentence_string -%}
  {%- assign email = "mailto:" -%}
  {%- for c in wg.chair %}
    {%- assign person = site.data.people[c] -%}
    {%- assign email = email | append: person.email | append: ";" -%}
  {% endfor -%}
  {%- assign subject = "?subject=CASS " | append: wg.name | append: " working group review" | uri_escape -%}
  {%- assign chair_email = "[" | append: chair | append: "](" | append: email | append: subject | append: ")" -%}
  {% assign line = expiration | append: "|" | append: name | append: "|" | append: wg.charter.status | append: "|" | append: wg.charter.status_date | append: "|" | append: chair_email %}
  {% assign cal = cal | push: line %}
{% endfor %}
{% assign cal = cal | sort %}

| Review Due | Working Group | Current Status | Status Date | Chair(s)
|:----------:|:--------------|:--------------:|:-----------:|:--------
{% for line in cal %}
  {%- assign fields = line | split: "|" -%}
  {%- assign expiration = fields[0] -%}
  {%- capture remaining %}{% include days-left date=expiration %}{% endcapture -%}
  {%- assign remaining = remaining | plus: 0 -%}
  {%- if remaining < 0 %}
    {% assign expiration = expiration | prepend: '<em><font color="red">' | append: '</font></em>' %}
  {% elsif remaining < 30 %}
    {% assign expiration = expiration | prepend: '<em><font color="blue">' | append: '</font></em>' %}
  {% endif -%}
  {%- if expiration == "9999-12-31" %}
    {% assign expiration = "<em>not required</em>" -%}
  {% endif -%}
  {{ expiration }} | {{ fields[1] }} | {{ fields[2] }} | {{ fields[3] }} | {{ fields[4] }}
{% endfor %}




