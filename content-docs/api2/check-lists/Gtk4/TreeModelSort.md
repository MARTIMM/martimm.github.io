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
|Class name||Gnome::Gtk4::TreeModelSort||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|TreeModelSort.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|TreeModelSort.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|TreeModelSort.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-with-model |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| clear-cache |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| convert-child-iter-to-iter |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| convert-child-path-to-path |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| convert-iter-to-child-iter |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| convert-path-to-child-path |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| iter-is-valid |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| reset-default-sort-func |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
