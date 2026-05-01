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

Checklist for module Gnome::Gio::DBusMessage to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::DBusMessage

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|DBusMessage.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|DBusMessage.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|DBusMessage.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-from-blob |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-gdbusmessage |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-method-call |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-signal |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| copy |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-arg0 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-arg0-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.80 ||
| get-body |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-byte-order |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-destination |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-error-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-flags |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-header |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-header-fields |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-interface |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-locked |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-member |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-message-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-num-unix-fds |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-reply-serial |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-sender |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-serial |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-signature |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-unix-fd-list |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| lock |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-method-error |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-method-error-literal |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| new-method-error-valist |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.26 ||
| new-method-reply |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| print |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-body |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-byte-order |![](/content-docs/asset_files/images/checklist-implement.png)|||
| set-destination |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-error-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-flags |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-header |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-interface |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-member |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-message-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-num-unix-fds |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-path |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-reply-serial |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-sender |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-serial |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-signature |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-unix-fd-list |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| to-blob |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| to-gerror |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| bytes-needed |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||

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

