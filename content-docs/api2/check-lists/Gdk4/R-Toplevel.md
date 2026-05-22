---
title: Gnome api 2
layout: sidebar
nav_menu: api2-nav
sidebar_menu: api2-gdk4-checklist-sidebar
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

Checklist for module Gnome::Gdk4::R-Toplevel to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gdk4::R-Toplevel

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|R-Toplevel.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|R-Toplevel.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|R-Toplevel.rakutest|0 tests|

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| begin-move |![](/content-docs/asset_files/images/checklist-implement.png)|||
| begin-resize |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| focus |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-state |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| inhibit-system-shortcuts |![](/content-docs/asset_files/images/checklist-implement.png)|||
| lower |![](/content-docs/asset_files/images/checklist-implement.png)|||
| minimize |![](/content-docs/asset_files/images/checklist-implement.png)|||
| present |![](/content-docs/asset_files/images/checklist-implement.png)|||
| restore-system-shortcuts |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-decorated |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-deletable |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-icon-list |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-modal |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-startup-id |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-title |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-transient-for |![](/content-docs/asset_files/images/checklist-implement.png)|||
| show-window-menu |![](/content-docs/asset_files/images/checklist-implement.png)|||
| supports-edge-constraints |![](/content-docs/asset_files/images/checklist-implement.png)|||
| titlebar-gesture |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 4.4 ||

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

