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

Checklist for module Gnome::Gio::DBusProxy to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::DBusProxy

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|DBusProxy.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|DBusProxy.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|DBusProxy.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-for-bus-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-for-bus-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| call |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call-with-unix-fd-list |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| call-with-unix-fd-list-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| call-with-unix-fd-list-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| get-cached-property |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-cached-property-names |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-connection |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-default-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-flags |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-interface-info |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-interface-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-name-owner |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-object-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-cached-property |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-default-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-interface-info |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-for-bus |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

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

