---
author: Scott CJX
event_uid: "perscom-11"
---

# Landing Page

<!-- {% assign event_data = site.data.events.items[page.event_uid] %} -->

{% for event_hash in site.data.event_list %}
  {% if event_hash.event_info.name == page.event_uid %}
    {% assign event_data = event_hash %}
    {% break %}
  {% endif %}
{% endfor %}

{% include landing_page.html var=event_data %}

<hr>

{% include event_schedule_page.html %}

<hr>
