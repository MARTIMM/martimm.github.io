---
title: Gnome api 2
layout: sidebar
nav_menu: api2-nav
sidebar_menu: api2-gtk4-checklist-sidebar
---
<style>
html body table {
  border: 2px solid rgb(47, 0, 47);
  width: 95%;
  margin: 0px auto;
  display: block table;
}

/* Keep most tables first 2 columns the same. Less disturbing display */
td:nth-child(1) {
  width: 35%;
}

td:nth-child(2) {
  width: 11%;
}

/* Legend table must have different column sizes */
.legend td:nth-child(1) {
  width: 1%;
}

.legend td:nth-child(2) {
  width: 99%;
}
</style>
# Module Checklist

Checklist for module Gnome::Gtk4::ScrolledWindow to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::ScrolledWindow

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|ScrolledWindow.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|ScrolledWindow.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|ScrolledWindow.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-scrolledwindow |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| get-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-hadjustment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-has-frame |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-hscrollbar |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-kinetic-scrolling |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-max-content-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-max-content-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-min-content-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-min-content-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-overlay-scrolling |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-placement |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-policy |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-propagate-natural-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-propagate-natural-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-vadjustment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-vscrollbar |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-hadjustment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-has-frame |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-kinetic-scrolling |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-max-content-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-max-content-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-min-content-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-min-content-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-overlay-scrolling |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-placement |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-policy |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-propagate-natural-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-propagate-natural-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-vadjustment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unset-placement |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version (4.0)
3. Version of deprecation and is removed in next release

## Legend for the tables

<table class="legend"><tr><th>Symbol</th><th>Meaning</th></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-ok.png" /></td>
<td>Code and documentation is generated</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-implement.png" /></td>
<td>Must be written</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-deprecated.png" /></td>
<td>Removed in next Gnome library release</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-missing.png" /></td>
<td>Not generated, there are missing types</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-no-implement.png" /></td>
<td>Is removed or will not be implemented</td></tr>

