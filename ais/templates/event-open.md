---
author: Scott CJX
---

# Landing Page

<script>
  event = {
    "name": "PERSCOM 11",
    "date": "9 Nov 2022",
    "time": "09:00 AM",
    "location": "Our Tampines Hub"
  }
  console.log({{request}});
  console.log({{event}});

  {% assign vars=event %}
  
</script>

{% comment %}
<!-- {% assign event.name = "PERSCOM 11" %}
{% assign event.date = "9 Nov 2022" %}
{% assign event.time = "0900" %}
{% assign event.location = "Our Tampines Hub" %} -->
{% endcomment %}

{% include landing_page.html vars=vars %}

<hr>

{% include event_schedule_page.html %}

<hr>
