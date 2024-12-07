---
title: MARTIMM's projects
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-ref-gtk4-sidebar
---

# Gtk 4 Module Reference

There are quite a lot of modules available now in this distribution. There are some which I believe are not needed and might be removed from this distribution later. There are also modules in Gtk which aren't yet generated. Below there is a litle table showing the missing and over complete modules.

There are also some modules already deprecated in version 4. This only means that they will not be available when version 5 comes out. As Emmanuele Bassisays, one of the GNOME Team,
  "Deprecate API is guaranteed to exist for the entire duration of the same major API series; anything that gets deprecated in GTK4 can only be removed in GTK5."

## Table of modules

| Name | Remove | Note |
|-|-|-|
CustomSorter | Maybe | Sorting is better done in Raku. Still need to investigate if some situations warrents the use of this sorter.
Expression| Maybe | Need to investigate its usefulnes.

GtkTreeView, GtkIconView, GtkComboBox, and all the API related to cell renderers. You should follow the GTK4 migration guide to see how to replace them with the new model objects and list view widgets.