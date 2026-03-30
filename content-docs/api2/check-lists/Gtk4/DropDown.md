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
|Class name||Gnome::Gtk4::DropDown||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|DropDown.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|DropDown.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|DropDown.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-dropdown |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-from-strings |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| get-enable-search |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-expression |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-factory |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-header-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-list-factory |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-search-match-mode |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-selected |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selected-item |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-show-arrow |![](/content-docs/asset_files/images/checklist-implement.png)| 4.6 ||
| set-enable-search |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-expression |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-factory |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-header-factory |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-list-factory |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-model |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-search-match-mode |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-selected |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-show-arrow |![](/content-docs/asset_files/images/checklist-implement.png)| 4.6 ||
