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

Checklist for module Gnome::Gtk4::PrintJob to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::PrintJob

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|PrintJob.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|PrintJob.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|PrintJob.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-printjob |![](/content-docs/asset_files/images/checklist-implement.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| get-collate |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-n-up |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-n-up-layout |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-num-copies |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-page-ranges |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-page-set |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-pages |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-printer |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-reverse |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-rotate |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-scale |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-settings |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-status |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-surface |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-title |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-track-print-status |![](/content-docs/asset_files/images/checklist-implement.png)|||
| send |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-collate |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-n-up |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-n-up-layout |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-num-copies |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-page-ranges |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-page-set |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-pages |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-reverse |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-rotate |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-scale |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-source-fd |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-source-file |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-track-print-status |![](/content-docs/asset_files/images/checklist-implement.png)|||

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

