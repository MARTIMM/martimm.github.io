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

Like any class in Raku, the classes in Gnome must be instantiated to make use of the methods defined in the class. We are used to the `new()` method of Raku but in `:Api<2>` version the method names are a bit longer.

### Using new-\*() methods

For any normal Gtk class, the name of the class is used in the name of the constructor method. To show a few examples;
```
my $grid = Gnome::Gtk4::Grid.new-grid;

my Gnome::Gtk4::Application $application .= new-application(
  $application-id, $flags
);
```

The structure and union classes all start with an `N-`. The constructors varies a bit and must be looked up in the docs. Sometimes, there is no way to create one. In those cases you get the initialized structure from other native routines. Examples are `N-TextIter` and `N-TreeIter`.

Almost always, the functions are defined in that class but the types are defined in packages with names starting with `T-` followed with all lowercase characters. For instance, a border structure can be initialized in two ways. The first without arguments and will set all members to zero. The second one uses the structure directly and can be initialized with specific values for each member.
```
my Gnome::Gtk4::N-Border $border .= new-border;
my N-Border $native-border .= new( :$!left, :$!right, :$!top, :$!bottom);
```

Note that types from `T-` files (in the example from **Gnome::Gtk4::T-border**) are exported so in the example we could use **N-Border** instead of **Gnome::Gtk4::T-border::N-Border**, which is obviously different from **Gnome::Gtk4::N-Border**.
Note also that for these structures, plain `new()` is used.
Also, a **N-Border** is the native representation and can therefore be read into **Gnome::Gtk4::N-Border** using the coersion process.
```
my Gnome::Gtk4::N-Border() $border = N-Border.new(
  :$!left, :$!right, :$!top, :$!bottom
);
```

### Using new(:native-object(…))

When native objects are returned from calls to native functions, you need some other method to initialize your class. The next example is from a grid. We assume that there is a `Label` widget stored at (0,0).

```
my N-Object $native-label = $grid.get-child-at( 0, 0);
my Gnome::Gtk4::Label $label .= new(:native-object($native-label));
```

Fortunately, this can be handled more easely using coercing.
```
my Gnome::Gtk4::Label() $label = $grid.get-child-at( 0, 0);
```
Under the hood, the same calls are made to get the Raku class initialized.

This coercing is usefull on many occasions. Most often used when callback routines are called from native code.

for example, in a `ListView` setting up a callback for the setup event;
```
has Gnome::Gtk4::SignalListItemFactory $!signal-factory;

submethod BUILD ( ) {
  $!signal-factory.register-signal( self, 'setup', 'setup');
…
}
```
Then, the first argument is a native `ListItem` which is coerced into a Raku object.
```
method setup ( Gnome::Gtk4::ListItem() $list-item ) {
  …
}
```

### Using new(:build-id(…))

While the use of this option is easy, there is bit more to it than the simple example suggests.
```
my Window $window .= new(:build-id<MyWindow>);
$window.present;
```
There is a [builder tutorial](/content-docs/api2/tutorials/builder1) to understand everything a bit better. As is shown there, the purpose is to define widgets and signals using a user interface design program and save the design. Later it is read into the program and displayed.

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
