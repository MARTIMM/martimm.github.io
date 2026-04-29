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

Checklist for module Gnome::Gio::SocketClient to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::SocketClient

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|SocketClient.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|SocketClient.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|SocketClient.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-gsocketclient |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| add-application-proxy |![](/content-docs/asset_files/images/checklist-implement.png)|||
| connect |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-to-host |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-to-host-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-to-host-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-to-service |![](/content-docs/asset_files/images/checklist-implement.png)|||
| connect-to-service-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-to-service-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connect-to-uri |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| connect-to-uri-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| connect-to-uri-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-enable-proxy |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-family |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-local-address |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-protocol |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-proxy-resolver |![](/content-docs/asset_files/images/checklist-implement.png)| 2.36 ||
| get-socket-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-tls |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-tls-validation-flags |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.72 |
| set-enable-proxy |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-family |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-local-address |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-protocol |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-proxy-resolver |![](/content-docs/asset_files/images/checklist-implement.png)| 2.36 ||
| set-socket-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-tls |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| set-tls-validation-flags |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.72 |

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

