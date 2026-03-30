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
|Class name||Gnome::Gtk4::Image||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Image.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Image.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Image.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-from-file |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-from-gicon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-from-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-from-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-from-pixbuf |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| new-from-resource |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-image |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| clear |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-gicon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-pixel-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-storage-type |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-from-file |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-from-gicon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-from-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-from-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-from-pixbuf |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| set-from-resource |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-pixel-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
