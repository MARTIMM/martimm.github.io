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
|Class name||Gnome::Gtk4::IconTheme||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|IconTheme.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|IconTheme.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|IconTheme.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-icontheme |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| add-resource-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-search-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-display |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-names |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-sizes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-resource-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-search-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-theme-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-gicon |![](/content-docs/asset_files/images/checklist-implement.png)| 4.2 ||
| has-icon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| lookup-by-gicon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| lookup-icon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-resource-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-search-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-theme-name |![](/content-docs/asset_files/images/checklist-ok.png)|||

### Functions

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| get-for-display |![](/content-docs/asset_files/images/checklist-ok.png)|||
