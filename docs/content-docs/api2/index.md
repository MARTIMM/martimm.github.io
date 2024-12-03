---
title: MARTIMM's projects
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-sidebar
---

# The Gnome Gtk Version 4 libraries

## Introduction
Just like its predessor `Gnome::Gtk3`, this repository is a language binding for Raku. 

All the modules are depending on other Gnome packages like `Gnome::Gio` and `Gnome::Glib` which are named the same as before. These packages are changed to handle a different way to call the native functions from the C-libraries. To prevent any problems like calling a function from the wrong module, the previous implementations are tagged with `:api<1>` and the newest with `:api<2>`. All  you have to do is using the proper tag when installing the packages and in the `use` statements.

### Installing the newest implementation

Using zef;

```
zef install Gnome::Gtk4:api<2>
```

### Importing a module in your programs

```
use Gnome::Gtk4::Window::api<2>;
```

### Installing the previous implementation

Using zef;

```
zef install Gnome::Gtk3:api<1>
```

### Importing a module in your programs

```
use Gnome::Gtk3::Window::api<1>;
```

## Differences between the api versions

The main differences between the two versions are the following
* The naming of the classes is a bit different
* The instanciation of objects is changed

### Naming of the classes

Gnome has the types `class`, `interface`, `record` or `union` from which classes are generated.
* `class`; This type will still convert to the same Raku type as in `:api<1>`. For instance, the <ins>Label</ins> class becomes **Gnome::Gtk4::Label**.
* `interface`; These types will get a `R-` prefix. As an example, the Orientable interface becomes **Gnome::Gtk4::R-Orientable**. However, there is one interface class in Gio which is converted into a normall class. This class is **Gnome::Gio::File**.
* `record` and `union`; Those types are both converted into class names with a `N-` prefixed. For example **Gnome::Gtk4::N-Bitset**.

There are more types describing simpler structures. These are `constant`, `enumeration`, `bitfield` and `function`. Those are all saved in modules with lowercase names and prefixed with a `T-`. An example module is **Gnome::Gtk4::T-enums**.

