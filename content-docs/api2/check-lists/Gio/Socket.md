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

Checklist for module Gnome::Gio::Socket to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::Socket

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Socket.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Socket.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Socket.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-from-fd |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| new-gsocket |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| accept |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| bind |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| check-connect-result |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| close |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| condition-check |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.22 ||
| condition-timed-wait |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.32 ||
| condition-wait |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.22 ||
| connect |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| connection-factory-create-connection |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| create-source |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)| 2.22 ||
| get-available-bytes |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| get-blocking |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-broadcast |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| get-credentials |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-family |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-fd |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-keepalive |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-listen-backlog |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-local-address |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-multicast-loopback |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| get-multicast-ttl |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| get-option |![](/content-docs/asset_files/images/checklist-implement.png)| 2.36 ||
| get-protocol |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-remote-address |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-socket-type |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| get-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| get-ttl |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| is-closed |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| is-connected |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| join-multicast-group |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| join-multicast-group-ssm |![](/content-docs/asset_files/images/checklist-implement.png)| 2.56 ||
| leave-multicast-group |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| leave-multicast-group-ssm |![](/content-docs/asset_files/images/checklist-implement.png)| 2.56 ||
| listen |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| receive |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| receive-bytes |![](/content-docs/asset_files/images/checklist-implement.png)| 2.80 ||
| receive-bytes-from |![](/content-docs/asset_files/images/checklist-implement.png)| 2.80 ||
| receive-from |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| receive-message |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| receive-messages |![](/content-docs/asset_files/images/checklist-implement.png)| 2.48 ||
| receive-with-blocking |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| send |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| send-message |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| send-message-with-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.60 ||
| send-messages |![](/content-docs/asset_files/images/checklist-implement.png)| 2.44 ||
| send-to |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| send-with-blocking |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-blocking |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-broadcast |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| set-keepalive |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-listen-backlog |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| set-multicast-loopback |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| set-multicast-ttl |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| set-option |![](/content-docs/asset_files/images/checklist-implement.png)| 2.36 ||
| set-timeout |![](/content-docs/asset_files/images/checklist-implement.png)| 2.26 ||
| set-ttl |![](/content-docs/asset_files/images/checklist-implement.png)| 2.32 ||
| shutdown |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||
| speaks-ipv4 |![](/content-docs/asset_files/images/checklist-implement.png)| 2.22 ||

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

