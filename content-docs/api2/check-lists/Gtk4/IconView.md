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

td:nth-child(1) {  
  width: 35%;
}
</style>

# Legend for the tables

|Symbol|Meaning|
|-|-|
|![](/content-docs/asset_files/images/checklist-ok.png)|Code and documentation is generated|
|![](/content-docs/asset_files/images/checklist-implement.png)|Must be written|
|![](/content-docs/asset_files/images/checklist-deprecated.png)|Removed in next Gnome library release|
|![](/content-docs/asset_files/images/checklist-missing.png)|Not generated, there are missing types|
|![](/content-docs/asset_files/images/checklist-no-implement.png)|Will not be generated|

# Module Information

||State|Name|Tests|
|-|-|-|-|
|Class name||Gnome::Gtk4::IconView||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|IconView.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|IconView.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|IconView.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-iconview |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| new-with-area |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| new-with-model |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| create-drag-icon |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| enable-model-drag-dest |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| enable-model-drag-source |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-activate-on-single-click |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-cell-rect |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-column-spacing |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-columns |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-cursor |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-dest-item-at-pos |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-drag-dest-item |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-item-at-pos |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-item-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-item-orientation |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-item-padding |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-item-row |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-item-width |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-margin |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-markup-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-model |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-path-at-pos |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-pixbuf-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-reorderable |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-row-spacing |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-selected-items |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-selection-mode |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-spacing |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-text-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-tooltip-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-tooltip-context |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-visible-range |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| item-activated |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| path-is-selected |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| scroll-to-path |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| select-all |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| select-path |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| selected-foreach |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-activate-on-single-click |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-column-spacing |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-columns |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-cursor |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-drag-dest-item |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-item-orientation |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-item-padding |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-item-width |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-margin |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-markup-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-model |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-pixbuf-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-reorderable |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-row-spacing |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-selection-mode |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-spacing |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-text-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-tooltip-cell |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-tooltip-column |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-tooltip-item |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| unselect-all |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| unselect-path |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| unset-model-drag-dest |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| unset-model-drag-source |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
