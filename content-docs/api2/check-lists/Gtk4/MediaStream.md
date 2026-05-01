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

Checklist for module Gnome::Gtk4::MediaStream to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::MediaStream

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|MediaStream.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|MediaStream.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|MediaStream.rakutest|0 tests|

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| ended |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.4 |
| error |![](/content-docs/asset_files/images/checklist-implement.png)|||
| error-valist |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| gerror |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-duration |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-ended |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-error |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-loop |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-muted |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-playing |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-timestamp |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-volume |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-audio |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-video |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-prepared |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-seekable |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-seeking |![](/content-docs/asset_files/images/checklist-implement.png)|||
| pause |![](/content-docs/asset_files/images/checklist-implement.png)|||
| play |![](/content-docs/asset_files/images/checklist-implement.png)|||
| prepared |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.4 |
| realize |![](/content-docs/asset_files/images/checklist-implement.png)|||
| seek |![](/content-docs/asset_files/images/checklist-implement.png)|||
| seek-failed |![](/content-docs/asset_files/images/checklist-implement.png)|||
| seek-success |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-loop |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-muted |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-playing |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-volume |![](/content-docs/asset_files/images/checklist-implement.png)|||
| stream-ended |![](/content-docs/asset_files/images/checklist-implement.png)| 4.4 ||
| stream-prepared |![](/content-docs/asset_files/images/checklist-implement.png)| 4.4 ||
| stream-unprepared |![](/content-docs/asset_files/images/checklist-implement.png)| 4.4 ||
| unprepared |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.4 |
| unrealize |![](/content-docs/asset_files/images/checklist-implement.png)|||
| update |![](/content-docs/asset_files/images/checklist-implement.png)|||

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

