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
|Class name||Gnome::Gtk4::ColumnView||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|ColumnView.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|ColumnView.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|ColumnView.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-columnview |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| append-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-columns |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-enable-rubberband |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-header-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-reorderable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-row-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-show-column-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-show-row-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-single-click-activate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-sorter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tab-behavior |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| insert-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
| scroll-to |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-enable-rubberband |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-header-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-reorderable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-row-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-show-column-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-show-row-separators |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-single-click-activate |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tab-behavior |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| sort-by-column |![](/content-docs/asset_files/images/checklist-ok.png)|||
