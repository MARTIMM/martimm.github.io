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

Checklist for module Gnome::Gtk4::TextView to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::TextView

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|TextView.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|TextView.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|TextView.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-textview |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-with-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| add-child-at-anchor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-overlay |![](/content-docs/asset_files/images/checklist-ok.png)|||
| backward-display-line |![](/content-docs/asset_files/images/checklist-ok.png)|||
| backward-display-line-start |![](/content-docs/asset_files/images/checklist-ok.png)|||
| buffer-to-window-coords |![](/content-docs/asset_files/images/checklist-ok.png)|||
| forward-display-line |![](/content-docs/asset_files/images/checklist-ok.png)|||
| forward-display-line-end |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-accepts-tab |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-bottom-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-cursor-locations |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-cursor-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-editable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-extra-menu |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-gutter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-indent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-input-hints |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-input-purpose |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-location |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-position |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-location |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-justification |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-left-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-line-at-y |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-line-yrange |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-ltr-context |![](/content-docs/asset_files/images/checklist-implement.png)| 4.4 ||
| get-monospace |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-overwrite |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-pixels-above-lines |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-pixels-below-lines |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-pixels-inside-wrap |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-right-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-rtl-context |![](/content-docs/asset_files/images/checklist-implement.png)| 4.4 ||
| get-tabs |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-top-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-visible-offset |![](/content-docs/asset_files/images/checklist-implement.png)| 4.18 ||
| get-visible-rect |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-wrap-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| im-context-filter-keypress |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move-mark-onscreen |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move-overlay |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move-visually |![](/content-docs/asset_files/images/checklist-ok.png)|||
| place-cursor-onscreen |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove |![](/content-docs/asset_files/images/checklist-ok.png)|||
| reset-cursor-blink |![](/content-docs/asset_files/images/checklist-ok.png)|||
| reset-im-context |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scroll-mark-onscreen |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scroll-to-iter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scroll-to-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-accepts-tab |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-bottom-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-cursor-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-editable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-extra-menu |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-gutter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-indent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-input-hints |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-input-purpose |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-justification |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-left-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-monospace |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-overwrite |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-pixels-above-lines |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-pixels-below-lines |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-pixels-inside-wrap |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-right-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tabs |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-top-margin |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-wrap-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| starts-display-line |![](/content-docs/asset_files/images/checklist-ok.png)|||
| window-to-buffer-coords |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

