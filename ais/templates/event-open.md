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

{% for event_data_item in site.data.event_datas %}
  {{ event_data_item.event_info }}
  \n
{% endfor %}  


{% if event_data == nil %}

{% else %}

{% include landing_page.html var=event_data %}

<hr>

{% include event_schedule_page.html %}

<hr>

{% endif %}
