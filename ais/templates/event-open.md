---
author: Scott CJX
event_uid: "perscom-11"
---

{% for event_data_fold in site.data.event_datas %}
  {% assign event_data_item = event_data_fold[1] %}
  {% if event_data_item.event_info == page.event_uid %}
    {% assign event_data = event_data_item %}
    {{ event_data }}
    {% break %}
  {% endif %}
{% endfor %}  

{% if event_data == nil %}
  event is not found
{% else %}

# Landing Page

{% include landing_page.html var=event_data %}

<hr>

{% include event_schedule_page.html %}

<hr>

{% endif %}
