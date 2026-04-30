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

Checklist for module Gnome::Gio::Settings to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::Settings

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Settings.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Settings.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Settings.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-full |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| new-gsettings |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-with-backend |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-with-backend-and-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-with-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| apply |![](/content-docs/asset_files/images/checklist-implement.png)|||
| bind |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.26 ||
| bind-with-mapping |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.26 ||
| bind-writable |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| create-action |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| delay |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-boolean |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-child |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-default-value |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-double |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-enum |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-flags |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-has-unapplied |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-int |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-int64 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.50 ||
| get-mapped |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-range |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.40 |
| get-string |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-strv |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-uint |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| get-uint64 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.50 ||
| get-user-value |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-value |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| is-writable |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| list-children |![](/content-docs/asset_files/images/checklist-implement.png)|||
| list-keys |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.46 |
| range-check |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.40 |
| reset |![](/content-docs/asset_files/images/checklist-implement.png)|||
| revert |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-boolean |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-double |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-enum |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-flags |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-int |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-int64 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.50 ||
| set-string |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-strv |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-uint |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| set-uint64 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.50 ||
| set-value |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| list-relocatable-schemas |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.40 |
| list-schemas |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.26 |2.40 |
| sync |![](/content-docs/asset_files/images/checklist-implement.png)|||
| unbind |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

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

