---
title: Gnome Gtk api 2
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-sidebar
---

# Notes for the :api<2> libraries

Several notes are scribbled here to make users aware of any problems they may encounter and how to circumvent them.

# Getting the object initialized

### Using new-\*() methods

### Using new(:native-object(\*))

### Using new(:build-id(\*))

### Using plain new()


# Deprecation messages

# Tools Library

There is a tools library in the making to make several widgets more easy to handle. Also to make replacements for some of the deprecated widgets. An example of a widget is the GtkDialog (used by **Gnome::Gtk4::Dialog**).

When is is available it is installable by `zef install GnomeTools`.
