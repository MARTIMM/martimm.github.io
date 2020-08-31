---
title: MARTIMM's projects
layout: sidebar

nav_menu: project-nav
sidebar_menu: projects-sidebar
---

# Projects

Here is a small list of projects I started or want to start or already working on

* Library project. A project based on mongodb to keep meta information on anything found on disk.

* MARTIMM.github.io project. You are now looking at it! 😉. This is not a Raku project but an attempt to make a central documentation starting point based on github pages facility using the Ruby Jekyll tool.

* MongoDB driver project. This project is about a set of modules which help making contact with a `mongod` or `mongos` server and store and retrieve data from a server. The modules needs extending and also maintenance. There are some issues like performance which I need to attend to.

  Testing of mongo servers are done using a sandboxed environment leaving any existing running production database in peace. The disadvantage of this approach is that testing takes more time because of mongod startup and init time. There are also advantages like no accidental messing up user data and the testing of several mongodb facilities like authentication, replication and sharding. It is also possible to create more interesting test cases with other databases and collections and references between them.

  There are other modules needed and were developed for the mongodb driver project.
  * **Auth::SCRAM**. For authentication.
  * **BSON**. To get data in and out of mongodb.
  * **PKCS5**. Needed for authentication.
  * **UEncoding**. Needed for credentials.
  * **Unicode::PRECIS**. Needed for credentials.

* **Config::DataLang::Refine**. A small project which helps you seeing your hash data in a different way.

* Gtk version 3 native binding project. It is about building graphical interfaces to make attractive applications.
  * **Gnome::Cairo**. Can be used standalone. If you only need this to create pictures, you can perhaps better use **Cairo** of Timo.
  * **Gnome::Gdk3**. Device access.
  * **Gnome::Gio**. I/O to files, network and dbus etc. Partly implemented because Raku has proper I/O to files and network.
  * **Gnome::Glade3**. About to be obsoleted. Most of it can now be done using the other modules. Testing the interface is still only possible here but badly documented. It needs to go to a new project repository **Gnome::T**.
  * **Gnome::Glib**. Basic facilities.
  * **Gnome::Gobject**. Basic object facilities.
  * **Gnome::Gtk3**. Top modules which are most used. Not completely done but a lot is possible.
  * **Gnome::Native**. Lowest set of modules to support rest of the Gnome packages.
  * **Gnome::Pango**. Text and font manipulations. Not yet published.

* **Pod::Render**. A way to generate doc in Html, Markdown or Pdf format.
* **QAManager**. A question answer form manager. Builds on Gnome::* projects. Not yet published.
* **Semaphore::ReadersWriters**. A module to protect variables using Semaphores. Access from different threads must be controlled, otherwise unpredictable results can happen or even untraceble crashes.
* **Tinky::Hash**. Build on **Tinky** of JStowe.
* **Xml::Actions**. A small project which helps you running through an XML file.
