---
title: Change log
#nav_title: Home
#![favicon](/assets/favicon.ico)layout: default
layout: sidebar
nav_menu: default-nav
sidebar_menu: main-sidebar
change_notes: change-log-data
---

<!--
{% assign todo-url = site.baseurl | append: "/content-docs/about/todo.html" %}
{% assign done-url = site.baseurl | append: "/content-docs/about/todo-done.html" %}

The latest release notes from all gnome Raku packages are noted here. See also the list of [todo]({{todo-url}}) notes and which [todo's are done]({{done-url}})
-->

{% include changes-section.html %}


{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
{% endfor %}
