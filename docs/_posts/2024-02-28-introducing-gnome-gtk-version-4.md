---
layout: post
title:  "Introducing Gnome Gtk Version 4 libraries language binding for Raku"
tags: [ Gtk4 ]
categories: [ Gtk Version 4 ]
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

### Importing a module

```
use Gnome::Gtk4::Window::api<2>;
```

### Installing the previous implementation

Using zef;

```
zef install Gnome::Gtk3:api<1>
```

### Importing a module

```
use Gnome::Gtk3::Window::api<1>;
```

## Differences between the api versions

The main differences between the two versions are the following
* The naming of the classes is a bit different
* The instanciation of objects is changed
