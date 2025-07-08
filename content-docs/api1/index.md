---
title: Gnome Gtk api 1
layout: sidebar
nav_menu: default-nav
sidebar_menu: api1-sidebar
---

# The Gnome Gtk libraries

## Introduction

This repository is a language binding for Raku. The set of distributions is for Gtk version 3.

All the modules from `Gnome::Gtk3` are depending on other Gnome packages like `Gnome::Gio` and `Gnome::Glib`. The implementations of the modules are tagged with `:api<1>`. This is done to prevent problems with the newer installment around `Gnome::Gtk4`. All you have to do is using the proper tag when installing the packages and in the `use` statements.

### Installing

Using zef;

```
zef install Gnome::Gtk3:api<2>
```

### Importing a module in your programs

Example to load the `Window` module;
```
use Gnome::Gtk3::Window::api<1>;
```
