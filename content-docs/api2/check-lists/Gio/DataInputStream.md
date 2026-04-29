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

Checklist for module Gnome::Gio::DataInputStream to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::DataInputStream

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|DataInputStream.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|DataInputStream.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|DataInputStream.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-gdatainputstream |![](/content-docs/asset_files/images/checklist-implement.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| get-byte-order |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-newline-type |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-byte |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-int16 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-int32 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-int64 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-line |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-line-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.20 ||
| read-line-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.20 ||
| read-line-finish-utf8 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| read-line-utf8 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| read-uint16 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-uint32 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-uint64 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| read-until |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.56 |
| read-until-async |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.20 |2.56 |
| read-until-finish |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.20 |2.56 |
| read-upto |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| read-upto-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| read-upto-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.24 ||
| set-byte-order |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-newline-type |![](/content-docs/asset_files/images/checklist-implement.png)|||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
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
<td>Will not be generated</td></tr>

