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

Checklist for module Gnome::Gtk4::Label to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::Label

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Label.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Label.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Label.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-label |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-with-mnemonic |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| get-attributes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-current-uri |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-ellipsize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-extra-menu |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-justify |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-label |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-layout |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-layout-offsets |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-lines |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-max-width-chars |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-mnemonic-keyval |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-mnemonic-widget |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-natural-wrap-mode |![](/content-docs/asset_files/images/checklist-implement.png)| 4.6 ||
| get-selectable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selection-bounds |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-single-line-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tabs |![](/content-docs/asset_files/images/checklist-implement.png)| 4.8 ||
| get-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-use-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-use-underline |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-width-chars |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-wrap |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-wrap-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-xalign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-yalign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| select-region |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attributes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-ellipsize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-extra-menu |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-justify |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-label |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-lines |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-markup-with-mnemonic |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-max-width-chars |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-mnemonic-widget |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-natural-wrap-mode |![](/content-docs/asset_files/images/checklist-implement.png)| 4.6 ||
| set-selectable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-single-line-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tabs |![](/content-docs/asset_files/images/checklist-implement.png)| 4.8 ||
| set-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-text-with-mnemonic |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-use-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-use-underline |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-width-chars |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-wrap |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-wrap-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-xalign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-yalign |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

