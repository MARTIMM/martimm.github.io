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

Checklist for module Gnome::Gtk4::Printer to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::Printer

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Printer.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Printer.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Printer.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-printer |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| accepts-pdf |![](/content-docs/asset_files/images/checklist-implement.png)|||
| accepts-ps |![](/content-docs/asset_files/images/checklist-implement.png)|||
| compare |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-backend |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| get-capabilities |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| get-default-page-size |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-description |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-hard-margins |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-hard-margins-for-paper-size |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-icon-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-job-count |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-location |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-state-message |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-details |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-accepting-jobs |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-active |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-default |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-paused |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-virtual |![](/content-docs/asset_files/images/checklist-implement.png)|||
| list-papers |![](/content-docs/asset_files/images/checklist-implement.png)|||
| request-details |![](/content-docs/asset_files/images/checklist-implement.png)|||

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

