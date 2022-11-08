---
author: Scott CJX
event_uid: "PERSCOM11"
---

# Landing Page

{% assign event_data = site.data.events.items[page.event_uid] %} -->

{% include landing_page.html var=event_data %}

<hr>

{% include event_schedule_page.html %}

<hr>
