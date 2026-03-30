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
|Class name||Gnome::Gtk4::GLArea||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|GLArea.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|GLArea.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|GLArea.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-glarea |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| attach-buffers |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-allowed-apis |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-api |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| get-auto-render |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-context |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-error |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-has-depth-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-has-stencil-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-required-version |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-use-es |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
| make-current |![](/content-docs/asset_files/images/checklist-ok.png)|||
| queue-render |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-allowed-apis |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| set-auto-render |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-error |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-has-depth-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-has-stencil-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-required-version |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-use-es |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.12 |
