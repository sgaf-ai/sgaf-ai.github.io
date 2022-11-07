---
author: Scott CJX
---

# Landing Page

<script>
    console.log({{request}});
</script>

{% assign event.name = "Event Name" %}
{% assign event.date = "Event Date" %}
{% assign event.time = "Event Time" %}
{% assign event.location = "Event Location" %}

{% include sidebar.html %}

{% include landing_page.html vars:event %}

<hr>

{% include event_schedule_page.html %}

<hr>
