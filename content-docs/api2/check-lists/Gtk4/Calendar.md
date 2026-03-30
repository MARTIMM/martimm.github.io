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
|Class name||Gnome::Gtk4::Calendar||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Calendar.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Calendar.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Calendar.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-calendar |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| clear-marks |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-date |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-day |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| get-day-is-marked |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-month |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| get-show-day-names |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-show-heading |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-show-week-numbers |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-year |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| mark-day |![](/content-docs/asset_files/images/checklist-ok.png)|||
| select-day |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-day |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| set-month |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| set-show-day-names |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-show-heading |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-show-week-numbers |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-year |![](/content-docs/asset_files/images/checklist-implement.png)| 4.14 ||
| unmark-day |![](/content-docs/asset_files/images/checklist-ok.png)|||
