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

Checklist for module Gnome::Gio::Subprocess to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::Subprocess

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Subprocess.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Subprocess.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Subprocess.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-gsubprocess |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| newv |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| communicate |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| communicate-async |![](/content-docs/asset_files/images/checklist-implement.png)|||
| communicate-finish |![](/content-docs/asset_files/images/checklist-implement.png)|||
| communicate-utf8 |![](/content-docs/asset_files/images/checklist-implement.png)|||
| communicate-utf8-async |![](/content-docs/asset_files/images/checklist-implement.png)|||
| communicate-utf8-finish |![](/content-docs/asset_files/images/checklist-implement.png)|||
| force-exit |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-exit-status |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-identifier |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-if-exited |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-if-signaled |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-status |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-stderr-pipe |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-stdin-pipe |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-stdout-pipe |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-successful |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| get-term-sig |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| send-signal |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| wait |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| wait-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| wait-check |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| wait-check-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| wait-check-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||
| wait-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.40 ||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version (2.0)
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

