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
|Class name||Gnome::Gtk4::TextBuffer||
|Module generated|![](/content-docs/asset_files/images/checklist-implement.png)|TextBuffer.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|TextBuffer.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-implement.png)|TextBuffer.rakutest|0 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-textbuffer |![](/content-docs/asset_files/images/checklist-ok.png)|||

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version
3. Version of deprecation and is removed in next release

### Methods

|Routine|State|Version|Deprecated|
|-------|-|----------|-------|
| add-commit-notify |![](/content-docs/asset_files/images/checklist-implement.png)| 4.16 ||
| add-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| add-selection-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| apply-tag |![](/content-docs/asset_files/images/checklist-ok.png)|||
| apply-tag-by-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| backspace |![](/content-docs/asset_files/images/checklist-ok.png)|||
| begin-irreversible-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| begin-user-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| copy-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-child-anchor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-tag |![](/content-docs/asset_files/images/checklist-ok.png)|||
| cut-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| delete |![](/content-docs/asset_files/images/checklist-ok.png)|||
| delete-interactive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| delete-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| delete-mark-by-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| delete-selection |![](/content-docs/asset_files/images/checklist-ok.png)|||
| end-irreversible-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| end-user-action |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-bounds |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-can-redo |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-can-undo |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-char-count |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-enable-undo |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-end-iter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-has-selection |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-insert |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-child-anchor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-line |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-line-index |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-line-offset |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-iter-at-offset |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-line-count |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-max-undo-levels |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-modified |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selection-bound |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selection-bounds |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-selection-content |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-slice |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-start-iter |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-tag-table |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-at-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-child-anchor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-interactive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-interactive-at-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-markup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-paintable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-range |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-range-interactive |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-with-tags |![](/content-docs/asset_files/images/checklist-ok.png)|||
| insert-with-tags-by-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move-mark |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move-mark-by-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| paste-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| place-cursor |![](/content-docs/asset_files/images/checklist-ok.png)|||
| redo |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-all-tags |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-commit-notify |![](/content-docs/asset_files/images/checklist-implement.png)| 4.16 ||
| remove-selection-clipboard |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-tag |![](/content-docs/asset_files/images/checklist-ok.png)|||
| remove-tag-by-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| select-range |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-enable-undo |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-max-undo-levels |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-modified |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-text |![](/content-docs/asset_files/images/checklist-ok.png)|||
| undo |![](/content-docs/asset_files/images/checklist-ok.png)|||
