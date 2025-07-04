---
title: MARTIMM's projects
layout: sidebar

nav_menu: default-nav
sidebar_menu: projects-sidebar
---

# Projects

Here is a small list of projects I started or want to start or already working on

* Library project. A project based on mongodb to keep meta information on anything found on disk. Not much work done at the moment

* MARTIMM.github.io project. You are now looking at it! 😉. This is not a Raku project but an attempt to make a central documentation starting point based on github pages facility using the Ruby Jekyll tool.

* MongoDB driver project. This project is about a set of modules which help making contact with a `mongod` or `mongos` server and store and retrieve data from a server. The modules needs extending and also maintenance.

  There are other modules needed and were developed for the mongodb driver project.
  * **Auth::SCRAM**. For authentication.
  * **BSON**. To get data in and out of mongodb.
  * **PKCS5**. Needed for authentication.
  * **UEncoding**. Needed for credentials.
  * **Unicode::PRECIS**. Needed for credentials.

* **Config::DataLang::Refine**. A small project which helps you seeing your hash data in a different way.

* Gtk version 3 native binding project. It is about building graphical user interfaces to make attractive applications. To use them properly each import must have the `:api<1>` tagged to it. This has become necessary because of the introduction of Gtk4 (see below) and the rewrite of the depending modules.

  * **Gnome::Cairo**. Can be used standalone. If you only need this to create pictures, you can perhaps better use **Cairo** of Timo.
  * **Gnome::Gdk3**. Device access.
  * **Gnome::Gio**. I/O to files, network and dbus etc. Partly implemented because Raku has proper I/O to files and network.
  * **Gnome::Glib**. Basic facilities.
  * **Gnome::Gobject**. Basic object facilities.
  * **Gnome::Gtk3**. Top modules which are most used. Not completely done but a lot is possible.
  * **Gnome::N**. Lowest set of modules to support rest of the Gnome packages.
  * **Gnome::T**. Tools for gui testing. Not yet published.

* Gtk version 4 native binding project. It is the natural follow up of **Gnome::Gtk3**. Many distibutions have kept the same name. To use them properly each import must have the `:api<2>` tagged to it.

  * **Gnome::Cairo**. Is not supported anymore. I have made tests where the cairo object is used from the [Cairo](https://raku.land/github:timo/Cairo) distribution of Timo and it works well.
  * **Gnome::Gdk4**. Device access.
  * **Gnome::Gio**. I/O to files, network and dbus etc. Partly implemented because Raku has proper I/O to files and network.
  * **Gnome::Glib**. Basic facilities. Only partly implemented.
  * **Gnome::Gobject**. Basic object facilities. Only partly implemented.
  * **Gnome::Graphene**.
  * **Gnome::Gsk4**.
  * **Gnome::Gtk4**. Top modules which are most used. Not completely done but a lot is possible.
  * **Gnome::N**. Lowest set of modules to support rest of the Gnome packages.
  * **Gnome::Pango**. Text and font manipulations. Only parts will be implemented.

* **Pod::Render**. A way to generate doc in Html, Markdown or Pdf format.
* **Semaphore::ReadersWriters**. A module to protect variables using Semaphores. Access from different threads must be controlled, otherwise unpredictable results can happen or even untraceble crashes.
* **Tinky::Hash**. Build on **Tinky** of JStowe.
* **Xml::Actions**. A small project which helps you running through an XML file.

History and development of the Gnome packages can be found [here](gnome-development.html).