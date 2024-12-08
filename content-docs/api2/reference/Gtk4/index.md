---
title: MARTIMM's projects
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-ref-gtk4-sidebar
---

# Gtk 4 Module Reference

There are quite a lot of modules available now in this distribution. There are some which I believe are not needed and might be removed from this distribution later. There are also modules in Gtk which aren't yet generated. Below there is a litle table showing the missing and over complete modules.

There are also some modules already deprecated in Gtk version 4. This only means that they will not be available when Gtk5 comes out. As Emmanuele Bassi says, one of the GNOME Team,
  "Deprecate API is guaranteed to exist for the entire duration of the same major API series; anything that gets deprecated in GTK4 can only be removed in GTK5."

## Table of modules

| Name | Remove | Note |
|-|-|-|
CustomSorter | Maybe | Sorting is better done in Raku. Still need to investigate if some situations warrents the use of this sorter.
Expression | Maybe | Need to investigate its usefulnes.
| |
TreeView | Gtk5 | Deprecated since 4.10
IconView | Gtk5 | Deprecated since 4.10
ComboBox | Gtk5 | Deprecated since 4.10
LockButton | Gtk5 | Deprecated since 4.10
| |
CellArea | Gtk5 | Deprecated since 4.10
CellAreaBox | Gtk5 | Deprecated since 4.10
CellRenderer | Gtk5 | Deprecated since 4.10
CellRendererAccel | Gtk5 | Deprecated since 4.10
CellRendererCombo | Gtk5 | Deprecated since 4.10
CellRendererPixbuf | Gtk5 | Deprecated since 4.10
CellRendererProgress | Gtk5 | Deprecated since 4.10
CellRendererSpin | Gtk5 | Deprecated since 4.10
CellRendererSpinner | Gtk5 | Deprecated since 4.10
CellRendererText | Gtk5 | Deprecated since 4.10
CellRendererToggle | Gtk5 | Deprecated since 4.10
| |
Dialog | Gtk5 | Deprecated since 4.10
ColorChooserDialog | Gtk5 | Deprecated since 4.10
FileChooserDialog | Gtk5 | Deprecated since 4.10
FontChooserDialog | Gtk5 | Deprecated since 4.10
MessageDialog | Gtk5 | Deprecated since 4.10


