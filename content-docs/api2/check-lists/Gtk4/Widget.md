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

Checklist for module Gnome::Gtk4::Widget to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gtk4::Widget

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Widget.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Widget.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Widget.rakutest|0 tests|

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| action-set-enabled |![](/content-docs/asset_files/images/checklist-ok.png)|||
| activate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| activate-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| activate-action-variant |![](/content-docs/asset_files/images/checklist-ok.png)|||
| activate-default |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-controller |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-css-class |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-mnemonic-label |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-tick-callback |![](/content-docs/asset_files/images/checklist-ok.png)|||
| allocate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| child-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| compute-bounds |![](/content-docs/asset_files/images/checklist-ok.png)|||
| compute-expand |![](/content-docs/asset_files/images/checklist-ok.png)|||
| compute-point |![](/content-docs/asset_files/images/checklist-ok.png)|||
| compute-transform |![](/content-docs/asset_files/images/checklist-ok.png)|||
| contains |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-pango-context |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-pango-layout |![](/content-docs/asset_files/images/checklist-ok.png)|||
| dispose-template |![](/content-docs/asset_files/images/checklist-implement.png)| 4.8 ||
| drag-check-threshold |![](/content-docs/asset_files/images/checklist-ok.png)|||
| error-bell |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-allocated-baseline |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| get-allocated-height |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| get-allocated-width |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| get-allocation |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| get-ancestor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-baseline |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-can-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-can-target |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-child-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-color |![](/content-docs/asset_files/images/checklist-implement.png)| 4.10 ||
| get-css-classes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-css-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-direction |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-display |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-first-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-focus-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-focus-on-click |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-focusable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-font-map |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-font-options |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.16 |
| get-frame-clock |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-halign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-has-tooltip |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-height |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-hexpand |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-hexpand-set |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-last-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-layout-manager |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-limit-events |![](/content-docs/asset_files/images/checklist-implement.png)| 4.18 ||
| get-mapped |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-margin-bottom |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-margin-end |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-margin-start |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-margin-top |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-native |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-next-sibling |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-opacity |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-overflow |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-pango-context |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-parent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-preferred-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-prev-sibling |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-primary-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-realized |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-receives-default |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-request-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-root |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-scale-factor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-sensitive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-settings |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-size-request |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-state-flags |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-style-context |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-template-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tooltip-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tooltip-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-valign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-vexpand |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-vexpand-set |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-width |![](/content-docs/asset_files/images/checklist-ok.png)|||
| grab-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-css-class |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-default |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-visible-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| hide |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| in-destruction |![](/content-docs/asset_files/images/checklist-ok.png)|||
| init-template |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-action-group |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-after |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-before |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-ancestor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-drawable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-sensitive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| keynav-failed |![](/content-docs/asset_files/images/checklist-ok.png)|||
| list-mnemonic-labels |![](/content-docs/asset_files/images/checklist-ok.png)|||
| map |![](/content-docs/asset_files/images/checklist-ok.png)|||
| measure |![](/content-docs/asset_files/images/checklist-ok.png)|||
| mnemonic-activate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| observe-children |![](/content-docs/asset_files/images/checklist-ok.png)|||
| observe-controllers |![](/content-docs/asset_files/images/checklist-ok.png)|||
| pick |![](/content-docs/asset_files/images/checklist-ok.png)|||
| queue-allocate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| queue-draw |![](/content-docs/asset_files/images/checklist-ok.png)|||
| queue-resize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| realize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-controller |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-css-class |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-mnemonic-label |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-tick-callback |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-can-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-can-target |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-child-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-css-classes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-cursor-from-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-direction |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-focus-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-focus-on-click |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-focusable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-font-map |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-font-options |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.16 |
| set-halign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-has-tooltip |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-hexpand |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-hexpand-set |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-layout-manager |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-limit-events |![](/content-docs/asset_files/images/checklist-implement.png)| 4.18 ||
| set-margin-bottom |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-margin-end |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-margin-start |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-margin-top |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-opacity |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-overflow |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-parent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-receives-default |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-sensitive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-size-request |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-state-flags |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tooltip-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tooltip-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-valign |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-vexpand |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-vexpand-set |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| should-layout |![](/content-docs/asset_files/images/checklist-ok.png)|||
| show |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| size-allocate |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| snapshot-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| translate-coordinates |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| trigger-tooltip-query |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unmap |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unparent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unrealize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unset-state-flags |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Functions

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| get-default-direction |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-default-direction |![](/content-docs/asset_files/images/checklist-ok.png)|||

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

