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

Checklist for module Gnome::Gio::TlsConnection to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::TlsConnection

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|TlsConnection.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|TlsConnection.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|TlsConnection.rakutest|0 tests|

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| emit-accept-certificate |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-certificate |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-channel-binding-data |![](/content-docs/asset_files/images/checklist-implement.png)| 2.66 ||
| get-ciphersuite-name |![](/content-docs/asset_files/images/checklist-implement.png)| 2.70 ||
| get-database |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| get-interaction |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| get-negotiated-protocol |![](/content-docs/asset_files/images/checklist-implement.png)| 2.60 ||
| get-peer-certificate |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-peer-certificate-errors |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-protocol-version |![](/content-docs/asset_files/images/checklist-implement.png)| 2.70 ||
| get-rehandshake-mode |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.60. |
| get-require-close-notify |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| get-use-system-certdb |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.30 |
| handshake |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| handshake-async |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| handshake-finish |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| set-advertised-protocols |![](/content-docs/asset_files/images/checklist-implement.png)| 2.60 ||
| set-certificate |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| set-database |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| set-interaction |![](/content-docs/asset_files/images/checklist-implement.png)| 2.30 ||
| set-rehandshake-mode |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)| 2.28 |2.60. |
| set-require-close-notify |![](/content-docs/asset_files/images/checklist-implement.png)| 2.28 ||
| set-use-system-certdb |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.30 |

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

