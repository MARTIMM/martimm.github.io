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
|Class name||Gnome::Gtk4::N-Bitset||
|Module generated|![](/content-docs/asset_files/images/checklist-ok.png)|Bitset.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Bitset.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Bitset.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-empty |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-range |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| add |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-range |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-range-closed |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-rectangle |![](/content-docs/asset_files/images/checklist-ok.png)|||
| contains |![](/content-docs/asset_files/images/checklist-ok.png)|||
| copy |![](/content-docs/asset_files/images/checklist-ok.png)|||
| difference |![](/content-docs/asset_files/images/checklist-ok.png)|||
| equals |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-maximum |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-minimum |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-nth |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-size-in-range |![](/content-docs/asset_files/images/checklist-ok.png)|||
| intersect |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-empty |![](/content-docs/asset_files/images/checklist-ok.png)|||
| ref |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-all |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-range |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-range-closed |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-rectangle |![](/content-docs/asset_files/images/checklist-ok.png)|||
| shift-left |![](/content-docs/asset_files/images/checklist-ok.png)|||
| shift-right |![](/content-docs/asset_files/images/checklist-ok.png)|||
| splice |![](/content-docs/asset_files/images/checklist-ok.png)|||
| subtract |![](/content-docs/asset_files/images/checklist-ok.png)|||
| union |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unref |![](/content-docs/asset_files/images/checklist-ok.png)|||
