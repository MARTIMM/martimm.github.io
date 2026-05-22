---
title: Gnome api 2
layout: sidebar
nav_menu: api2-nav
sidebar_menu: api2-gdk4-checklist-sidebar
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

Checklist for module Gnome::Gdk4::Surface to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gdk4::Surface

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-ok.png)|Surface.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Surface.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-ok.png)|Surface.rakutest|1 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-popup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-toplevel |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| beep |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-cairo-context |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.18 |
| create-gl-context |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-similar-surface |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| create-vulkan-context |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.14 |
| destroy |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-device-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-device-position |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-display |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-frame-clock |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-mapped |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-scale |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-scale-factor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| hide |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-destroyed |![](/content-docs/asset_files/images/checklist-ok.png)|||
| queue-render |![](/content-docs/asset_files/images/checklist-ok.png)|||
| request-layout |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-device-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-input-region |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-opaque-region |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.16 |
| translate-coordinates |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

