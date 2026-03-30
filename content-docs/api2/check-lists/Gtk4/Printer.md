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
|Class name||Gnome::Gtk4::Printer||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Printer.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Printer.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Printer.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-printer |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| accepts-pdf |![](/content-docs/asset_files/images/checklist-implement.png)|||
| accepts-ps |![](/content-docs/asset_files/images/checklist-implement.png)|||
| compare |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-backend |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| get-capabilities |![](/content-docs/asset_files/images/checklist-implement.png)![](/content-docs/asset_files/images/checklist-missing.png)|||
| get-default-page-size |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-description |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-hard-margins |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-hard-margins-for-paper-size |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-icon-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-job-count |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-location |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-name |![](/content-docs/asset_files/images/checklist-implement.png)|||
| get-state-message |![](/content-docs/asset_files/images/checklist-implement.png)|||
| has-details |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-accepting-jobs |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-active |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-default |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-paused |![](/content-docs/asset_files/images/checklist-implement.png)|||
| is-virtual |![](/content-docs/asset_files/images/checklist-implement.png)|||
| list-papers |![](/content-docs/asset_files/images/checklist-implement.png)|||
| request-details |![](/content-docs/asset_files/images/checklist-implement.png)|||
