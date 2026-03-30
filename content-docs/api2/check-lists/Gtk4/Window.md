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
|Class name||Gnome::Gtk4::Window||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|Window.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|Window.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|Window.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-window |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| close |![](/content-docs/asset_files/images/checklist-ok.png)|||
| destroy |![](/content-docs/asset_files/images/checklist-ok.png)|||
| fullscreen |![](/content-docs/asset_files/images/checklist-ok.png)|||
| fullscreen-on-monitor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-application |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-decorated |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-default-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-default-widget |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-deletable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-destroy-with-parent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-focus-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-group |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-handle-menubar-accel |![](/content-docs/asset_files/images/checklist-implement.png)| 4.2 ||
| get-hide-on-close |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-mnemonics-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-modal |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-resizable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-title |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-titlebar |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-transient-for |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-group |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-active |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-fullscreen |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-maximized |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-suspended |![](/content-docs/asset_files/images/checklist-implement.png)| 4.12 ||
| maximize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| minimize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| present |![](/content-docs/asset_files/images/checklist-ok.png)|||
| present-with-time |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||4.14 |
| set-application |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-decorated |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-default-size |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-default-widget |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-deletable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-destroy-with-parent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-display |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-focus |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-focus-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-handle-menubar-accel |![](/content-docs/asset_files/images/checklist-implement.png)| 4.2 ||
| set-hide-on-close |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-mnemonics-visible |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-modal |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-resizable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-startup-id |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-title |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-titlebar |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-transient-for |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unfullscreen |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unmaximize |![](/content-docs/asset_files/images/checklist-ok.png)|||
| unminimize |![](/content-docs/asset_files/images/checklist-ok.png)|||

### Functions

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| get-default-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-toplevels |![](/content-docs/asset_files/images/checklist-ok.png)|||
| list-toplevels |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-auto-startup-notification |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-default-icon-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-interactive-debugging |![](/content-docs/asset_files/images/checklist-ok.png)|||
