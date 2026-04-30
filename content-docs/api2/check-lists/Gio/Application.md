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

Checklist for module Gnome::Gio::Application to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::Application

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-ok.png)|Application.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Application.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-ok.png)|Application.rakutest|1 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-gapplication |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| activate |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| add-main-option |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.42 ||
| add-main-option-entries |![](/content-docs/asset_files/images/checklist-ok.png)| 2.40 ||
| add-option-group |![](/content-docs/asset_files/images/checklist-ok.png)| 2.40 ||
| bind-busy-property |![](/content-docs/asset_files/images/checklist-ok.png)| 2.44 ||
| get-application-id |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| get-dbus-connection |![](/content-docs/asset_files/images/checklist-ok.png)| 2.34 ||
| get-dbus-object-path |![](/content-docs/asset_files/images/checklist-ok.png)| 2.34 ||
| get-flags |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| get-inactivity-timeout |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| get-is-busy |![](/content-docs/asset_files/images/checklist-ok.png)| 2.44 ||
| get-is-registered |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| get-is-remote |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| get-resource-base-path |![](/content-docs/asset_files/images/checklist-ok.png)| 2.42 ||
| get-version |![](/content-docs/asset_files/images/checklist-ok.png)| 2.80 ||
| hold |![](/content-docs/asset_files/images/checklist-ok.png)|||
| mark-busy |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| open |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| quit |![](/content-docs/asset_files/images/checklist-ok.png)| 2.32 ||
| register |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| release |![](/content-docs/asset_files/images/checklist-ok.png)|||
| run |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| send-notification |![](/content-docs/asset_files/images/checklist-ok.png)| 2.40 ||
| set-action-group |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.32 |
| set-application-id |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| set-default |![](/content-docs/asset_files/images/checklist-ok.png)| 2.32 ||
| set-flags |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| set-inactivity-timeout |![](/content-docs/asset_files/images/checklist-ok.png)| 2.28 ||
| set-option-context-description |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| set-option-context-parameter-string |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| set-option-context-summary |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| set-resource-base-path |![](/content-docs/asset_files/images/checklist-ok.png)| 2.42 ||
| set-version |![](/content-docs/asset_files/images/checklist-ok.png)| 2.80 ||
| unbind-busy-property |![](/content-docs/asset_files/images/checklist-ok.png)| 2.44 ||
| unmark-busy |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| withdraw-notification |![](/content-docs/asset_files/images/checklist-ok.png)| 2.40 ||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| get-default |![](/content-docs/asset_files/images/checklist-ok.png)| 2.32 ||
| id-is-valid |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version (2.28)
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

