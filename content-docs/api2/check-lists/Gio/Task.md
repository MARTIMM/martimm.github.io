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

Checklist for module Gnome::Gio::Task to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::Task

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-ok.png)|Task.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Task.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Task.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-gtask |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| attach-source |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-cancellable |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-check-cancellable |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-completed |![](/content-docs/asset_files/images/checklist-ok.png)| 2.44 ||
| get-context |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-name |![](/content-docs/asset_files/images/checklist-ok.png)| 2.60 ||
| get-priority |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-return-on-cancel |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-source-object |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-source-tag |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| get-task-data |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| had-error |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| propagate-boolean |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| propagate-int |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| propagate-pointer |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| propagate-value |![](/content-docs/asset_files/images/checklist-ok.png)| 2.64 ||
| return-boolean |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| return-error |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| return-error-if-cancelled |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| return-int |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| return-new-error |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| return-new-error-literal |![](/content-docs/asset_files/images/checklist-ok.png)| 2.80 ||
| return-pointer |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| return-prefixed-error |![](/content-docs/asset_files/images/checklist-ok.png)| 2.80 ||
| return-value |![](/content-docs/asset_files/images/checklist-ok.png)| 2.64 ||
| run-in-thread |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| run-in-thread-sync |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| set-check-cancellable |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| set-name |![](/content-docs/asset_files/images/checklist-ok.png)| 2.60 ||
| set-priority |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| set-return-on-cancel |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| set-source-tag |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| set-static-name |![](/content-docs/asset_files/images/checklist-ok.png)| 2.76 ||
| set-task-data |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| is-valid |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| report-error |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| report-new-error |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||

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

