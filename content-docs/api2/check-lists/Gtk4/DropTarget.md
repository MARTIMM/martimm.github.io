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
|Class name||Gnome::Gtk4::DropTarget||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|DropTarget.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|DropTarget.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|DropTarget.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-droptarget |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| get-actions |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-current-drop |![](/content-docs/asset_files/images/checklist-implement.png)| 4.4 ||
| get-drop |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.4 |
| get-formats |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-gtypes |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| get-preload |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-value |![](/content-docs/asset_files/images/checklist-ok.png)|||
| reject |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-actions |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-gtypes |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| set-preload |![](/content-docs/asset_files/images/checklist-ok.png)|||
