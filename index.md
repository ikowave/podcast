---
layout: default
title: Home
---

## Latest Episodes

<ul>
{% for post in site.posts %}
<li>
    <h3><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h3>
    {% if post.description %}
    <p>{{ post.description }}</p>
    {% endif %}
    <small>Published on {{ post.date | date: "%B %d, %Y" }}</small>
</li>
{% endfor %}
</ul>
