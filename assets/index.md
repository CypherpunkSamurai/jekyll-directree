---
layout: page
---

{% assign page_dir = page.dir %}
# Index Of: ~{{ page_dir }}

{% list_files files * %}


{% for p in files %}
{% assign pref = p.name | downcase | slice: 0, 1 %}

{% if p.name contains "index.md" %}
<li><a href="{{ p.url }}../">../</a></li>
{% else %}

{% if pref != '_' %}
{% if p.name contains 'Gemfile' %}
{% else %}
<li><a href="{{ p.url }}">{{ p.name }}</a></li>
{% endif %}
{% endif %}

{% endif %}
{% endfor %}
