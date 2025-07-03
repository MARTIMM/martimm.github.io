---
title: Gnome Gtk api 2
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-sidebar
---

# The Gnome Gtk Version 4 libraries

## Introduction

Just like its predessor `Gnome::Gtk3`, this repository is a language binding for Raku. 

All the modules are depending on other Gnome packages like `Gnome::Gio` and `Gnome::Glib` which are named the same as before. All the packages are changed to use a different way to call the native functions from the C-libraries. To prevent any problems like calling a function from the wrong module, the previous implementations are tagged with `:api<1>` and the newest with `:api<2>`. All you have to do is using the proper tag when installing the packages and in the `use` statements.

### Installing the newest implementation

Using zef;

```
zef install Gnome::Gtk4:api<2>
```

### Importing a module in your programs

Example to load the `Window` module;
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
* class; This type will still convert to the same Raku type as in `:api<1>`. They are defined as Raku classes. For instance, the <ins>GtkLabel</ins> class becomes **Gnome::Gtk4::Label**.
* interface; These types will get a `R-` prefix and are defined as Raku roles. As an example, the <ins>GtkOrientable</ins> interface becomes **Gnome::Gtk4::R-Orientable**. However, there is one interface class in Gio which is converted into a normal class. This class is **Gnome::Gio::File**.
* record and union; Those types are both converted into class names with a `N-` prefixed. For example **Gnome::Gtk4::N-Bitset**.

There are more types describing simpler structures. These are `constant`, `enumeration`, `bitfield` and `function`. Those are all saved in modules with lowercase names and prefixed with a `T-`. An example module is **Gnome::Gtk4::T-enums**.

### The instanciation of objects

In the `:api<1>` version, the instanciation was always done using the `.new()` methods. To cope with all arguments to the native functions, the `.new()` methods had to implement several kinds of named arguments to handle that. So, that is changed in this `:api<2>` version. All of the routines are named after the Gnome native functions and a few are named differently because of clashes with Raku new() method.

First a small explanation of how any function name is translated into the raku method name. In the Gtk set of modules, a function name, for example in the **GtkBox** class, `gtk_box_append()` to append an object in the box. The translation is to remove the gtk and class name. Then change remaining underscores in dashes. So the `gtk_box_append()` function is defined as `append()` method.

This will also be done for the contructor functions. for the **GtkBox**, there is a function called `gtk_box_new()`. This would be translated to `new()`. The exception for these kind of functions is that the name will become `new-box()` instead of `new()`. Other constructor names like e.g. `gtk_label_new_with_mnemonic()` in the **GtkLabel** class would not pose a problem. This is translated into `new-with-mnemonic()`.

### Exceptions to the rule

Yes, we need exceptions, we are craving for exceptions. Here they are;
* Calling `.new()` on any object is possible with the option `:native-object()`. This is used to initiate a class with an object from a calle to a native object, e.g. getting a widget from a grid. Lets say a button;
  ```
  my Gnome::Gtk4::Button $button .= new(:native-object($grid.get-child-at(1,1));
  ```
  This can be made a bit shorter using coersion. The next line will do exactly the same thing.
  ```
  my Gnome::Gtk4::Button() $button = $grid.get-child-at(1,1);
  ```

* The other exception is for any object inheriting from **Gnome::GObject::Object**. Then it is possible to initialise the class with option `:build-id()`. However, there must be some work done before this can used. Examples will be shown in the tutorials section.

