---
title: Gnome api1 and api2 history and development
nav_menu: default-nav
layout: sidebar
#sidebar_menu: home-sidebar
---
# Introduction

There are already a few interfaces made by other fellow programmers such as **GTK::Simple**, **GTK::Simpler** and **GTK::Scintilla**. Why then, would you ask, build another one? There were several reasons to do this, to sum up a few;
* Learning to handle Raku native interface to C libraries and having example code with the packages mentioned above.
* I wanted to follow the Gnome documents as closely as possible. This meant that the subroutine names are kept the same as those in the libs, though, the names are shortened to prevent repetions of library and class names in that name, see below in the history.
* I wanted to have classes with methods instead of a series of subroutines.
* I wanted the event handling code in separate classes where the information about specific procedures can be stored.
* I wanted all possible event handlers available for the user, not just the most used ones.
* I didn't want to fix signals/events in method names like `click()`.
* Later, I decided that I also wanted a more complete set of methods interfaced to GTK+ et al. This happened after I had created a program to skim through the source code of the gtk libraries (.h and .c), because these files are very well documented, and generate a Raku module from it.
* I wanted to follow the obsolete markings of Gnome. E.g. the GtkHBox and GtkVBox are not supported anymore in favor of GtkGrid (in Raku module **Gnome::Gtk3::Grid**).


# History

## First attempts

There is already a bit of history for these packages. It started off building the **GTK::Glade** package which soon became too big. So a part was separated into **GTK::V3**. After some time working with the library I felt that the class names were a bit too long and that the words `gtk` and `gdk` were repeated too many times in the class path. E.g. there was **GTK::V3::Gtk::GtkButton** and **GTK::V3::Gdk::GdkScreen** to name a few. So, finally it was split into several other packages named, **Gnome::N** for the native linkup on behalf of the other Gnome modules, **Gnome::Glib**, **Gnome::GObject**, **Gnome::Gdk3**, **Gnome::Gtk3** and some others, according to what is shown [on the developers page here](https://developer.gnome.org/documentation/).

The classes in these packages are now renamed into e.g. **Gnome::Gtk3::Button**, **Gnome::Gdk3::Screen**, **Gnome::GObject::Object** and **Gnome::Glib::List**. 

The Raku code of the classes and structures and its documentation are all generated. These files are adjusted and the test programs are created by hand.
The sources for the generatation are taken from the C *.c and *.h files.


## Later stages

Together with the attempt to generate the new `Gnome::Gtk4` and its dependencies, there has been a discussion about how to proceed getting and using the info from the `GIR`. For now I decided to go through with the XML equivalent and store the necessary data in a YAML file. The generator takes that data and generates the Raku modules in such a way that the info of every constructor, method, or function is stored in a **Hash**. When running the module, the needed calls are bound to the native routines and saved for that run only.

The other angle to take is to directly call methods from the `GIR` libraries to bind the the calls to the named routines on the fly. The named routines are only saved while running the program and then forgotten when the program ends.

To compare the pros and cons of the two methods is difficult but boiles down to the following;
* The first has everything in a **Hash** and does not have to look up the data from the `GIR`. Its pro is that there is no overhead of accessing the `GIR` libraries to get the info. On the contrary however, modules may have missing calls because it might be generated with older `GIR` XML data. Or, the modules may have calls which aren't yet in the users installed libraries.
* The second has the newest info on that particular system, therefore there are no missing calls or calls not yet available. Though, you have to check the documentation and compare the version with that of the libraries.

Whatever method is choosen, structures, documentation, and tests need to be generated and changed by hand afterwards.

A third interesting possibility is mentioned. Start out with a package name only. When a module is needed, the package generates one with the necessary code to handle the needed calls. It's a bit of a chicken and egg problem though and needs some deeper thoughts.
  It is a hard problem because of the following;
  * Suppose the user wants to run
    ```
    use Gnome::Gtk4;
    use Gnome::Gtk4::Label;

    my Gnome::Gtk4::Label $label .= new-label;
    $label.set-text('text')`.
    ```
    1) `use Gnome::Gtk4;` should make all modules available. The question is where? Possible solution would be at `~/.raku`.
    2) The next import statement would then import the generated `Gnome::Gtk4::Label`. This is already too late! A small test shows that the modules are looked up before it is generated. So at least the (empty with basic code) classes and modules must be delivered and installed.
    3) The `.new-label()` contructor and the method `.set-text()` can be found in the **Label**** class. So that may be easy to find after a few calls. But where to search for when a method is used from another parent class, e.g. `.set-size-request()`, or when it is inherited, e.g. `.set-orientation()` for a **Box**. That search is even more intensive. This is also the case in the 2nd proposal written above.
  
  * No tests can be made for the modules except for the base modules delevered in the package! Because everything from the tests will generate new code and the time you want to save while installing the modules will be taken by the tests. Mind that the discussion was started to shorten the install time of the packages which took a long time for the `Gnome::Gtk3` libraries.

Thinking it all over, I will keep it like it is now except that there must be a way to see what gnome library version the raku code, tests, and documentation is generated against. Using for example `dnf list gtk4|grep x86_64` to get the versions and generate a program to show that information. That particular program will then be shipped with the `Gnome::Gtk3` and `Gnome::Gtk4` package.


## Results

Now that the new `Gnome::Gtk4` and its dependencies are generated, the packages needed to be distinquished from the older `Gnome::Gtk3` and friends. Because the packages are generated differently and the use of the classes and structures were changed. This is done by by adding the `:api` tag to the classes and meta data. The older classes got the `:api<1>` tag and the newer classes got `:api<2>`. Using that when installing and when importing the classes makes sure you get the right modules.

# The benefits

When the packages mature, the next points are/become available;

## Pros
  * Because all calls are made directly to the native routines in the Gnome libraries, the defaults of GTK are kept. The native objects returned by constructors are saved and used in method calls under the hood so to speak.
  * Separation of callbacks from other code by forcing the user to define the callbacks in classes. In the case of event handling, data can be provided with named arguments to the `register-signal()` method defined in class **Gnome::GObject::Object**. This method is available to any class inheriting from **Gnome::GObject::Object** which almost every class does except for structures and unions.
  * Building the interface by hand like in the examples and tutorial, is not always necessary. For Gtk+ there is the `Glade designer` which stores its result in an XML file. Feeding this saved design from program to methods in module **Gnome::Gtk3::Builder** is preferable when building larger user interfaces.
    For Gtk4, there is `Cambalache` and one need to use **Gnome::Gtk4::Builder** to use the designed XML data.
  * The eventloop is more commonly used in the Gtk3 version altough it is incouraged to use the **Gnome::Gtk3::Application** where the use of the eventloop becomes invisible. This is more so in Gtk 4 version.
  * It is possible to make use of actions which can trigger events like signal processing does.
  * It is possible to make use of resource files. It is a kind of storage of several items in one file.
  * It is possible to make use of D-Bus. This is one of the things that makes an application able to interact with the system and other processes as well as the desktop manager. (Not yet implemented in these libraries though).
  * Drag and drop will help you to drag documents from a filebrowser into your application as well as moving widgets from one place to another in your GUI.
    In the Gtk4 version it isn't yet possible to do interprocess dragging. This might be a bug and/or is caused by the transition of X11 to Wayland.
  * Drawing is available with Cairo using the **Gnome::Cairo** package. In the mean time, Gtk4 can make use of Timo's **Caito** package. It might very well be possible to use it with Gtk3 (api<1>) version too.
  * Text manipulations are supported using Pango.


## Cons
  * The code base is much larger but I think it gives you greater flexibility.
  * Code is somewhat slower. That is not a big problem when a user interface is mostly set up and drawn once. Compiling the software takes much time when installing the packages. Raku, however gets faster and is becoming less of a problem. Also, now that the api<2> version is generated, the time to install is also shorter.
  * When programs are run the first time, it might take some time to compile.


# Packages
The packages, together with a few others is an interface to the great Gnome libraries Gtk, Gdk, Pango, GObject, Gio and Glib. Cairo is an independed project but Gnome makes significant use of that package.
It is important to know that not all classes are available or fully implemented. E.g. Pango for the Gtk3 version is not available and not all classes are defined in **Gnome::Gtk3::Gio** and **Gnome::Gtk4::Gio** are available because much of the I/O can be handled by Raku itself.

* [x] **Gnome::Gtk3:api<1>**. Version 3 widget toolkit for graphical interfaces.
* [x] **Gnome::Gdk3:api<1>**. Version 3 low-level abstraction for the windowing system.
* [x] **Gnome::GdkPixbuf:api<1>**. An image loading library.
* [x] **Gnome::Gio:api<1>**. File and URI handling. Support of resources for applications and D-Bus communication.
* [x] **Gnome::GObject:api<1>**. Data structures and utilities for C programs.
* [x] **Gnome::Glib:api<1>**. C-based object and type system with signals and slots.
* [x] **Gnome::Cairo:api<1>**. 2D, vector-based drawing for high-quality graphics.
* [x] **Gnome::N:api<1>**. Used to hold any access specs to the libraries and a map of glib types to raku types. Also there is some debugging possible and an exception class defined. Furthermore, it holds the `TopLevelSupportClass` which keeps the `N-Object` save for all classes inheriting from this class.

* [ ] **Gnome::Gtk3:api<2>**. Gtk version 3 for api<2>.
* [ ] **Gnome::Gdk3:api<2>**. Gdk version 3 for api<2>.
* [x] **Gnome::Gtk4:api<2>**. Gtk version 4 for api<2>.
* [x] **Gnome::Gsk4:api<2>**. GTK Scene Graph Kit for api<2>.
* [x] **Gnome::Gdk4:api<2>**. Gdk version 4 for api<2>.
* [x] **Gnome::GdkPixbuf:api<2>**. GdkPixbuf for api<2>.
* [x] **Gnome::Graphene:api<2>**. The Graphene package provides a thin layer of types for graphics libraries. Api<2>.
* [x] **Gnome::GObject:api<2>**. GObject for api<2>.
* [x] **Gnome::Glib:api<2>**. Glib for api<2>.
* [x] **Gnome::Gio:api<2>**. Gio for api<2>.
* [x] **Gnome::Pango:api<2>**. Pango is a library for layout and rendering of text, with an emphasis on internationalization. Api<2>.
* [x] **Gnome::N:api<2>**. N for api<2>. Additionally, there is also a helper class `GnomeRoutineCaller` which task it is to bind the call to the native routine and save the resulting function during the programs existence.

<!--
# Site Contents
* [Tutorials](content-docs/tutorial.html): Tutorials about using the modules in all its forms.

* [Examples](content-docs/examples.html): A series of examples.

* [Reference](content-docs/reference-gtk3.html): References of all the modules in all packages. All information is contained here so there is no need to go to the other packages for information.

* [Design](content-docs/design.html): Notes on how things are set up.

* [Todo](content-docs/todo.html): There's still a lot to do.
-->

# Installation

## Dependencies on external software

The software in these packages do not install the Gnome libraries and tools (gtk, glib, cairo, pango, glade, etc), so there is a dependency on several libraries which must be installed before the Raku software can be used.

Before any code can be run we must also install the packages we want to use. It is assumed that **Raku** (See [Raku Site](https://raku.org/downloads/)) and the **GTK+** libraries (See [Gtk Site](https://www.gtk.org/)) are already installed. The program `zef` is used to install the modules. Enter the following command on the command line to install the modules needed for this tutorial and any other dependencies will be installed too. Run `zef install Gnome::Gtk3` to work with GTK+.

### Installing for version 3
```
zef install Gnome::Gtk3:api<1>
```

### Installing for version 4
```
zef install Gnome::Gtk4:api<2>
```


<!--
## Raku

**NOTE**: It is really important to install the latest version of Raku because some of the encountered bugs went away after upgrading. Also some tricks like variable argument lists to native functions were only possible after summer 2019.

  Here are some steps to follow if you want to be at the top of things. You need `git` to get the Rakudo software from the github site. However, the people who distribute the compiler, put much effort to keep the distribution packages up to date nowadays for *nixes and windows. So the next steps become less important.

  Anyways …
  1) Make a directory to work in, e.g. Raku
  2) Go in that directory and run `git clone https://github.com/rakudo/rakudo.git`
  3) Then go into the created rakudo directory
  4) Run `perl Configure.pl --gen-moar --gen-nqp --backends=moar`
  5) Run `make test`
  6) And run `make install`

  Subsequent updates of the Raku compiler and moarvm can be installed with
  1) Go into the rakudo directory
  2) Run `git pull`
  then repeat steps 4 to 6 from above

  Your path must then be set to the program directories where `$Rakudo` is your `rakudo` directory; `${PATH}:$Rakudo/install/bin:$Rakudo/install/share/perl6/site/bin`

  You can read the README for more details [on the same site](https://github.com/rakudo/rakudo).

  After this, you will notice that the `raku` command is available next to `perl6` so it is also a move forward in the renaming of Perl6 to Raku.

  The rakudo star installation must be removed if it was used, because otherwise there will be two Raku compilers wanting to be the captain on your ship. Also all modules must be reinstalled of course and will be installed at `$Rakudo/install/share/perl6/site`.
-->


# Issues

There are always some problems! If you find one, please help by filing an issue at [for the api 1 version (gtk3 et al)](https://github.com/MARTIMM/gnome-gtk3/issues) and [for the api 2 version (gtk4 and friends)](https://github.com/MARTIMM/gnome-source-skim-tool/issues)


# Attribution

* The inventors and developers of Raku, formerly known as Perl 6, of course and the writers of the documentation.
* The builders of the Gnome libraries and the documentation on their [developers site](https://developer.gnome.org/documentation/).
* Helpful hands are there when issues are raised, after requesting for help or developers returning ideas tips, etcetera for documentation; Pixlmixr, Hkdtam, JackKuhan, Alain Barbason, Clifton Wood, Rob Ransbottom, Håkon Hægland (some names are Github names).
* Icons used from www.iconfinder.com, humility icons, Andy Fitzsimon, licensed GPL.
* Documentation found to use in tutorials and examples
  * [Wikibooks](https://en.wikibooks.org/wiki/GTK%2B_By_Example) For explanations on Gtk+, Pango and Cairo.
  * [Zetcode](http://zetcode.com/tutorials/gtktutorial/) for the several tutorials on Gtk+ and Cairo.
  * Prof Stewart Weiss, [web address](http://www.compsci.hunter.cuny.edu/~sweiss/index.php). On his site are numerous documents under which many about GTK+. I have used parts from these to explain many aspects of the user interface system.
  * Bert Timmerman for his Cairo transformation examples: https://gist.github.com/bert/1164354/c0391388afffc4b287c46ac79287f77e94c712e3


# Licenses

* Raku code and pod documentation: Artistic License 2.0
* Use of Gnome reference documentation: GNU Free Documentation License Version 1.3
* Documentation from other external sources used in tutorials: Creative Commons Attribution-ShareAlike 4.0 International Public License
