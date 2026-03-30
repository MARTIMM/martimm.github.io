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
|Class name||Gnome::Gtk4::Entry||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Entry.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Entry.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Entry.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-entry |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-with-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| get-activates-default |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-alignment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-attributes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-completion |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| get-current-icon-drag-source |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-extra-menu |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-has-frame |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-activatable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-area |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-at-pos |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-gicon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-sensitive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-storage-type |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-tooltip-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-tooltip-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-input-hints |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-input-purpose |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-invisible-char |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-max-length |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-overwrite-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-placeholder-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-progress-fraction |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-progress-pulse-step |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tabs |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-text-length |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-visibility |![](/content-docs/asset_files/images/checklist-ok.png)|||
| grab-focus-without-selecting |![](/content-docs/asset_files/images/checklist-ok.png)|||
| progress-pulse |![](/content-docs/asset_files/images/checklist-ok.png)|||
| reset-im-context |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-activates-default |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-alignment |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attributes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-buffer |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-completion |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.10 |
| set-extra-menu |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-has-frame |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-activatable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-drag-source |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-from-gicon |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-from-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-from-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-sensitive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-tooltip-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-tooltip-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-input-hints |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-input-purpose |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-invisible-char |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-max-length |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-overwrite-mode |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-placeholder-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-progress-fraction |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-progress-pulse-step |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-tabs |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-visibility |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unset-invisible-char |![](/content-docs/asset_files/images/checklist-ok.png)|||
