---
title: Gnome api 2
layout: sidebar
nav_menu: api2-nav
sidebar_menu: api2-checklist-sidebar
---

<style>
html body table {
  border: 2px solid rgb(47, 0, 47);
  width: 95%;
  margin: 0px auto;
  display: block table;
}

/* Keep most tables first 2 columns the same. Less disturbing display */
td:nth-child(1) {
  width: 35%;
}

td:nth-child(2) {
  width: 11%;
}

/* Legend table must have different column sizes */
.legend td:nth-child(1) {
  width: 1%;
}

.legend td:nth-child(2) {
  width: 99%;
}
</style>


# Library and distribution information

Below there is a table of versions. It shows the current Raku distributions and the Gnome library versions on my computer. It may give you an indication of what is provided by the Raku distributions compared to the [Gnome documentation](https://docs.gtk.org/). There are also tables for each module in a distribution showing what is supported or need to be defined.

|Distribution|Raku version|Gnome library version|
|-|-|-|
|Gnome::Gtk4|0.2.8|4.20.4|
|Gnome::Gdk4|0.1.23|4.20.4|
|Gnome::Gsk4|0.2.1|4.20.4|
|Gnome::Graphene|0.1.13|1.10.8|
|Gnome::Glib|0.1.14|1:1.2.10|
|Gnome::Gio|0.1.27|1:1.2.10|
|Gnome::GObject|0.2.0|1:1.2.10|
|Gnome::Pango|0.1.15|1.57.1|
|Gnome::GdkPixbuf|0.1.5|2.44.6^really2.44.4|
