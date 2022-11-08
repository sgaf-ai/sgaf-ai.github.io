---
author: Scott CJX
event_uid: "perscom-11"
---

# Landing Page

<!-- {% assign event_data = site.data.events.items[page.event_uid] %} -->

{% assign event_data = nil %}
{% for event_hash in site.data.event_list %}
  {% if event_hash.event_info.uid == page.event_uid %}
    {% assign event_data = event_hash %}
    {% break %}
  {% endif %}
{% endfor %}

{% if event_data == nil %}

{% else %}

{% include landing_page.html with event_data as var %}

<hr>

{% include event_schedule_page.html %}

<hr>

{% endif %}
