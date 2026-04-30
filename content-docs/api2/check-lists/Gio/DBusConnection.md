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

Checklist for module Gnome::Gio::DBusConnection to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::DBusConnection

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|DBusConnection.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|DBusConnection.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|DBusConnection.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-for-address-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-for-address-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| add-filter |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| call-with-unix-fd-list |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| call-with-unix-fd-list-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| call-with-unix-fd-list-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| close |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| close-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| close-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| emit-signal |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| export-action-group |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| export-menu-model |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| flush |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| flush-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| flush-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-capabilities |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-exit-on-close |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-flags |![](/content-docs/asset_files/images/checklist-implement.png)| 2.60 ||
| get-guid |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-last-serial |![](/content-docs/asset_files/images/checklist-implement.png)| 2.34 ||
| get-peer-credentials |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-stream |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-unique-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| is-closed |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| register-object |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| register-object-with-closures |![](/content-docs/asset_files/images/checklist-implement.png)| 2.46 ||
| register-subtree |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| remove-filter |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| send-message |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| send-message-with-reply |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| send-message-with-reply-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| send-message-with-reply-sync |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-exit-on-close |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| signal-subscribe |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| signal-unsubscribe |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| start-message-processing |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| unexport-action-group |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| unexport-menu-model |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| unregister-object |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| unregister-subtree |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-for-address |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version (2.26)
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

