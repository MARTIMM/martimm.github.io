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

Checklist for module Gnome::Gtk4::Snapshot to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::Snapshot

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Snapshot.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Snapshot.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Snapshot.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-snapshot |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| append-border |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-cairo |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-color |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-conic-gradient |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-fill |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| append-inset-shadow |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-layout |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-linear-gradient |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-node |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-outset-shadow |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-radial-gradient |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-repeating-linear-gradient |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-repeating-radial-gradient |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-scaled-texture |![](/content-docs/asset_files/images/checklist-implement.png)| 4.10 ||
| append-stroke |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| append-texture |![](/content-docs/asset_files/images/checklist-ok.png)|||
| free-to-node |![](/content-docs/asset_files/images/checklist-ok.png)|||
| free-to-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| gl-shader-pop-texture |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.16 |
| perspective |![](/content-docs/asset_files/images/checklist-ok.png)|||
| pop |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-blend |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-blur |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-clip |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-color-matrix |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-cross-fade |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-debug |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-fill |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| push-gl-shader |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.16 |
| push-mask |![](/content-docs/asset_files/images/checklist-implement.png)| 4.10 ||
| push-opacity |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-repeat |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-rounded-clip |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-shadow |![](/content-docs/asset_files/images/checklist-ok.png)|||
| push-stroke |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| render-background |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| render-focus |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| render-frame |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| render-insertion-cursor |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| render-layout |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| restore |![](/content-docs/asset_files/images/checklist-ok.png)|||
| rotate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| rotate-3d |![](/content-docs/asset_files/images/checklist-ok.png)|||
| save |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scale |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scale-3d |![](/content-docs/asset_files/images/checklist-ok.png)|||
| to-node |![](/content-docs/asset_files/images/checklist-ok.png)|||
| to-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| transform |![](/content-docs/asset_files/images/checklist-ok.png)|||
| transform-matrix |![](/content-docs/asset_files/images/checklist-ok.png)|||
| translate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| translate-3d |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

