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

Checklist for module Gnome::Gtk4::PrintSettings to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::PrintSettings

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|PrintSettings.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|PrintSettings.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|PrintSettings.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-from-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| new-from-gvariant |![](/content-docs/asset_files/images/checklist-implement.png)|||
| new-from-key-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| new-printsettings |![](/content-docs/asset_files/images/checklist-implement.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| copy |![](/content-docs/asset_files/images/checklist-implement.png)|||
| foreach |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-bool |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-collate |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-default-source |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-dither |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-double |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-double-with-default |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-duplex |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-finishings |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-int |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-int-with-default |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-length |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-media-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-n-copies |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-number-up |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-number-up-layout |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-orientation |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-output-bin |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-page-ranges |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-page-set |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-paper-height |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-paper-size |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-paper-width |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-print-pages |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-printer |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-printer-lpi |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-quality |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-resolution |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-resolution-x |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-resolution-y |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-reverse |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-scale |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-use-color |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-key |![](/content-docs/asset_files/images/checklist-implement.png)|||
| load-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| load-key-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-bool |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-collate |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-default-source |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-dither |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-double |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-duplex |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-finishings |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-int |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-length |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-media-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-n-copies |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-number-up |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-number-up-layout |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-orientation |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-output-bin |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-page-ranges |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-page-set |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-paper-height |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-paper-size |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-paper-width |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-print-pages |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-printer |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-printer-lpi |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-quality |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-resolution |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-resolution-xy |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-reverse |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-scale |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-use-color |![](/content-docs/asset_files/images/checklist-implement.png)|||
| to-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| to-gvariant |![](/content-docs/asset_files/images/checklist-implement.png)|||
| to-key-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| unset |![](/content-docs/asset_files/images/checklist-implement.png)|||

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

