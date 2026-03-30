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
|Class name||Gnome::Gtk4::Application||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Application.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Application.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Application.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-application |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| add-window |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-accels-for-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-actions-for-accel |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-active-window |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-menu-by-id |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-menubar |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-window-by-id |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-windows |![](/content-docs/asset_files/images/checklist-ok.png)|||
| inhibit |![](/content-docs/asset_files/images/checklist-ok.png)|||
| list-action-descriptions |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-window |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-accels-for-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-menubar |![](/content-docs/asset_files/images/checklist-ok.png)|||
| uninhibit |![](/content-docs/asset_files/images/checklist-ok.png)|||
