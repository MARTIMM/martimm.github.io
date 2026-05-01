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

Checklist for module Gnome::Gtk4::ColumnView to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::ColumnView

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|ColumnView.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|ColumnView.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|ColumnView.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-columnview |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| append-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-columns |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-enable-rubberband |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-header-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-reorderable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-row-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-show-column-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-show-row-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-single-click-activate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-sorter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tab-behavior |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| insert-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scroll-to |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-enable-rubberband |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-header-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-reorderable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-row-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-show-column-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-show-row-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-single-click-activate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tab-behavior |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| sort-by-column |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

