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

Checklist for module Gnome::Gio::FileInfo to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::FileInfo

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|FileInfo.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|FileInfo.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|FileInfo.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-gfileinfo |![](/content-docs/asset_files/images/checklist-implement.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| clear-status |![](/content-docs/asset_files/images/checklist-implement.png)|||
| copy-into |![](/content-docs/asset_files/images/checklist-implement.png)|||
| dup |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-access-date-time |![](/content-docs/asset_files/images/checklist-implement.png)| 2.70 ||
| get-attribute-as-string |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-boolean |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-byte-string |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-data |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-file-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.78 ||
| get-attribute-int32 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-int64 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-object |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-status |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-string |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-stringv |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-attribute-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-uint32 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-attribute-uint64 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-content-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-creation-date-time |![](/content-docs/asset_files/images/checklist-implement.png)| 2.70 ||
| get-deletion-date |![](/content-docs/asset_files/images/checklist-implement.png)| 2.36 ||
| get-display-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-edit-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-etag |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-file-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-icon |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-is-backup |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-is-hidden |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-is-symlink |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-modification-date-time |![](/content-docs/asset_files/images/checklist-implement.png)| 2.62 ||
| get-modification-time |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.62 |
| get-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-size |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| get-sort-order |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-symbolic-icon |![](/content-docs/asset_files/images/checklist-implement.png)| 2.34 ||
| get-symlink-target |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-attribute |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-namespace |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| list-attributes |![](/content-docs/asset_files/images/checklist-implement.png)|||
| remove-attribute |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-access-date-time |![](/content-docs/asset_files/images/checklist-implement.png)| 2.70 ||
| set-attribute |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-boolean |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-byte-string |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-file-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.78 ||
| set-attribute-int32 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-int64 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-mask |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-object |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-status |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-attribute-string |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-stringv |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-uint32 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-attribute-uint64 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-content-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-creation-date-time |![](/content-docs/asset_files/images/checklist-implement.png)| 2.70 ||
| set-display-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-edit-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-file-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-icon |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-is-hidden |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-is-symlink |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-modification-date-time |![](/content-docs/asset_files/images/checklist-implement.png)| 2.62 ||
| set-modification-time |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.62 |
| set-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-size |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| set-sort-order |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-symbolic-icon |![](/content-docs/asset_files/images/checklist-implement.png)| 2.34 ||
| set-symlink-target |![](/content-docs/asset_files/images/checklist-implement.png)|||
| unset-attribute-mask |![](/content-docs/asset_files/images/checklist-implement.png)|||

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

