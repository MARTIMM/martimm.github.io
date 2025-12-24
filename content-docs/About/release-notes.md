---
title: About MARTIMM's
nav_menu: default-nav
sidebar_menu: home-sidebar
layout: sidebar
---

# Release notes

Release notes for github pages project https://martimm.github.io

* 2025-12-17 0.9.0
  * Change of theme. I used tactile and rouge based on Jackyll but saw another one which looked promising. It is called Minimal Mistakes. The reason is that I wanted to start writing short stories about the projects. Much is already done in tutorials but had a need to catagorize them and reachable from other locations. They also should look different from the reference pages. The new theme comes with a lot of `_includes` and `_layouts` which made me thinking of adding a few of myself to separate more parts of the display of data. With the new theme, the old layout collapses and changes must be made in several files to get that right again.
  * Made changes to the scss style files to include the rakudoc styles at a single point. Need to find out how to copy with the missing files errors because the css files at those locations where not needed anymore.

* 2025-sometime 0.8.1
  * Add a program, `generate-md-refs.raku`, to copy docs from Raku distros to the publishing directories.
  * Added some tutorials for the Gtk4 implementation.
  * Added references.

* 2024-12-06 0.8.0
  * There were some problems when deploying the site on github. Moved all docs to top level again and solved some dangling symbolic links.

* 2024-10-29 0.7.0
  * Add pages for new project Gnome::Gtk4

* 2020-08-28 0.6.3:
  * Relocate images directory

* 2020-08-28 0.6.2:
  - Project page extended.
  - Added links to the main page.

* 2020-07-07 0.6.1:
  - Setup done and added a few pages.

* 2020-07-02 0.6.0:
  - New start for this main entry point of all project information. Everything is thrown overboard! Now I have some experience with Jekyll to document the Gnome GTK+ project, this site will also be build using Jekyll in the same theme.

* 2016-10-27 0.5.0:
  - jquery select a[data_href] directly. Therefore the ref doesn't need to be checked because it will not be selected.
  - jquery fade in/out to make appearence nicer.
  - Reload of the same article is prevented.

* 2016-SomeMonth-SomeDay 0.4.0:
  - Used jquery from google apis
  - Split an article from index.sxml
  - Setup directories Sxml for all sxml files and directories therein mirroring the site like Articles/03-12.
  - Split css from index.sxml

* 2016-SomeMonth-SomeDay 0.3.1:
  - Oeps, picture too large png convert to jpg almost 100x smaller.

* 2016-SomeMonth-SomeDay 0.3.0:
  - Ok, now we need content!

* 2016-SomeMonth-SomeDay 0.2.1:
  - Moved out program to Semi-xml as sxml2xml

* 2016-SomeMonth-SomeDay 0.2.0:
  - Created generate-site.pl6

* 2016-SomeMonth-SomeDay 0.1.2:
  - Tests with my own programs

* 2016-SomeMonth-SomeDay 0.1.1:
  - Tried a template from opendesign.org

* 2015-SomeMonth-SomeDay 0.1.0:
  - Setup
