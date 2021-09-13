---
layout: page
title: Test
---

This is a test page

Self Path: {{ page.path }}


{% list_files files files/test/*.md %}
{% for post in files %}
Post: {{ post }}
{% endfor %}
