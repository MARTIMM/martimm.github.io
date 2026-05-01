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

Checklist for module Gnome::Gtk4::ListBox to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::ListBox

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|ListBox.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|ListBox.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|ListBox.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-listbox |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| append |![](/content-docs/asset_files/images/checklist-ok.png)|||
| bind-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| drag-highlight-row |![](/content-docs/asset_files/images/checklist-ok.png)|||
| drag-unhighlight-row |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-activate-on-single-click |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-adjustment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-row-at-index |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-row-at-y |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selected-row |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selected-rows |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selection-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-show-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tab-behavior |![](/content-docs/asset_files/images/checklist-implement.png)| 4.18 ||
| insert |![](/content-docs/asset_files/images/checklist-ok.png)|||
| invalidate-filter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| invalidate-headers |![](/content-docs/asset_files/images/checklist-ok.png)|||
| invalidate-sort |![](/content-docs/asset_files/images/checklist-ok.png)|||
| prepend |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-all |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| select-all |![](/content-docs/asset_files/images/checklist-ok.png)|||
| select-row |![](/content-docs/asset_files/images/checklist-ok.png)|||
| selected-foreach |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-activate-on-single-click |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-adjustment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-filter-func |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-header-func |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-placeholder |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-selection-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-show-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-sort-func |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tab-behavior |![](/content-docs/asset_files/images/checklist-implement.png)| 4.18 ||
| unselect-all |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unselect-row |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

