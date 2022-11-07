---
author: Scott CJX
---

# Landing Page

<script>
    console.log({{request}});
</script>

{% assign event.name = "PERSCOM 11" %}
{% assign event.date = "9 Nov 2022" %}
{% assign event.time = "0900" %}
{% assign event.location = "Our Tampines Hub" %}

{% include landing_page.html vars=event %}

<hr>

{% include event_schedule_page.html %}

<hr>
