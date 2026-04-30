---
title: Gnome api 2
layout: sidebar
nav_menu: api2-nav
sidebar_menu: api2-gio-checklist-sidebar
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

Checklist for module Gnome::Gio::R-AppInfo to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::R-AppInfo

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|R-AppInfo.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|R-AppInfo.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|R-AppInfo.rakutest|0 tests|

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| add-supports-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| can-delete |![](/content-docs/asset_files/images/checklist-implement.png)| 2.20 ||
| can-remove-supports-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| delete |![](/content-docs/asset_files/images/checklist-implement.png)| 2.20 ||
| dup |![](/content-docs/asset_files/images/checklist-implement.png)|||
| equal |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-commandline |![](/content-docs/asset_files/images/checklist-implement.png)| 2.20 ||
| get-description |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-display-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.24 ||
| get-executable |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-icon |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-id |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-supported-types |![](/content-docs/asset_files/images/checklist-implement.png)| 2.34 ||
| launch |![](/content-docs/asset_files/images/checklist-implement.png)|||
| launch-uris |![](/content-docs/asset_files/images/checklist-implement.png)|||
| launch-uris-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.60 ||
| launch-uris-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.60 ||
| remove-supports-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-as-default-for-extension |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-as-default-for-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-as-last-used-for-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| should-show |![](/content-docs/asset_files/images/checklist-implement.png)|||
| supports-files |![](/content-docs/asset_files/images/checklist-implement.png)|||
| supports-uris |![](/content-docs/asset_files/images/checklist-implement.png)|||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| create-from-commandline |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-all |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-all-for-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-default-for-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-default-for-type-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.74 ||
| get-default-for-type-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.74 ||
| get-default-for-uri-scheme |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-default-for-uri-scheme-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.74 ||
| get-default-for-uri-scheme-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.74 ||
| get-fallback-for-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-recommended-for-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| launch-default-for-uri |![](/content-docs/asset_files/images/checklist-implement.png)|||
| launch-default-for-uri-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.50 ||
| launch-default-for-uri-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.50 ||
| reset-type-associations |![](/content-docs/asset_files/images/checklist-implement.png)| 2.20 ||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version ()
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

