---
title: Gnome Gtk api 2
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-sidebar
---

# Notes for the :api<2> libraries

Several notes are scribbled here to make users aware of any problems they may encounter and how to circumvent them.

## Use of `:api<1>` and `:api<2>`

# Getting the object initialized

### Using new-\*() methods

### Using new(:native-object(\*))

### Using new(:build-id(\*))

### Using plain new()

# Versions of libraries
## Missing methods
## Versions program
The package `Gnome::Gtk4` is shipped with the program `version-of.raku` to see the library version against which the packages are generated. For example;
```
> raku bin/version-of.raku gtk4
Gnome version of gtk4 library at time of generation is: 4.16.13
```

# Deprecation messages
There are many deprecations in the Gnome packages. To make the user aware of this the library generates deprecation message when the user program finishes. This can become annoying and all depreactions of Gnome is activated in the next release. So for example GtkDialog is deprecated in Gtk4 but will only be removed in Gtk5.

To get rid of the messages, just set the `IGNORE_GNOME_DEPRECATION_MESSAGES` environment variable. In your program that is easy to do;
```
%*ENV<IGNORE_GNOME_DEPRECATION_MESSAGES> = 1;
```

# Tools Library

There is a tools library in the making to make several widgets more easy to handle. Also to make replacements for some of the deprecated widgets. An example of a widget is the GtkDialog (used by **Gnome::Gtk4::Dialog**).

When is is available it is installable by `zef install GnomeTools`.

# Issues
