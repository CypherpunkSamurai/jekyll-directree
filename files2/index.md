---
layout: page
---

{% assign page_dir = page.dir %}
# Index Of: ~{{ page_dir }}

{% list_files files * %}

<div class="box">
<ul class="directory-list">

{% for p in files %}
{% assign pref = p.name | downcase | slice: 0, 1 %}
{% assign exte = p.name | downcase | extname %}

{% if p.name contains "index.md" %}
<li><a href="{{ site.url }}{{ site.baseurl }}{{ p.url }}../">../</a></li>
{% else %}

{% if pref != '_' %}
{% if p.name contains 'Gemfile' %}
{% else %}

{% if exte contains '.' %}
<li><a href="{{ site.url }}{{ site.baseurl }}{{ p.url }}">{{ p.name }}</a></li>
{% else %}
<li class="folder"><a href="{{ site.url }}{{ site.baseurl }}{{ p.url }}">{{ p.name }}</a></li>
{% endif %}

{% endif %}
{% endif %}

{% endif %}
{% endfor %}

</ul>
</div>