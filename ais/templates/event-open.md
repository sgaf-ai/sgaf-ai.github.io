---
author: Scott CJX
event_uid: "perscom-11"
---

# Landing Page

{% assign event_data = nil %}
{% for event_hash in site.data.event_list.events %}

  {% if event_hash.uid == page.event_uid %}
    {% assign event_data = event_hash %}
    --> {{ event_data }}
    {% break %}
  {% endif %}
{% endfor %}

{% for event_data_fold in site.data.event_datas %}
  {% assign event_data_item = event_data_fold[1] %}
  {% if event_data_item.event_info.event_uid == page.event_uid %}
    {% assign event_data = event_data_item %}
    {{ event_data }}
    {% break %}
  {% endif %}
{% endfor %}  

{% if event_data == nil %}
  event is not found
{% else %}

{% include landing_page.html var=event_data %}

<hr>

{% include event_schedule_page.html %}

<hr>

{% endif %}
