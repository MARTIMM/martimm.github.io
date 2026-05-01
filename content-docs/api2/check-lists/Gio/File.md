---
title: Gnome api 2
layout: sidebar
nav_menu: api2-nav
sidebar_menu: api2-gio-checklist-sidebar
---
<style>
html body table {
  border: 2px solid rgb(47, 0, 47);
  width: 95%;
  margin: 0px auto;
  display: block table;
}

/* Keep most tables first 2 columns the same. Less disturbing display */
td:nth-child(1) {
  width: 35%;
}

td:nth-child(2) {
  width: 11%;
}

/* Legend table must have different column sizes */
.legend td:nth-child(1) {
  width: 1%;
}

.legend td:nth-child(2) {
  width: 99%;
}
</style>
# Module Checklist

Checklist for module Gnome::Gio::File to show the progress of deveopment or whether it is deprecated. Most of the modules are generated but documentation needs to be checked for typos and mistakes. Also examples may be added. Not much will be done for deprecated modules. You might be interested in the [GnomeTools distribution](/content-docs/GnomeTools/index.html) where some of the deprecated modules are rewritten.

Furthermore there is a list of the current versions of [Gnome libraries and Raku distibutions](/content-docs/api2/check-lists/lib-versions) installed on my machine versus the Raku distribution versions.

## Gnome::Gio::File

||State|Name|Tests|
|-|-|-|-|
|Module generated|![](/content-docs/asset_files/images/checklist-ok.png)|File.rakumod
|Documentation corrected|![](/content-docs/asset_files/images/checklist-implement.png)|File.rakudoc
|Tests completed|![](/content-docs/asset_files/images/checklist-ok.png)|File.rakutest|4 tests|

### Constructors

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| new-build-filename |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| new-for-commandline-arg |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-for-commandline-arg-and-cwd |![](/content-docs/asset_files/images/checklist-ok.png)| 2.36 ||
| new-for-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-for-uri |![](/content-docs/asset_files/images/checklist-ok.png)|||
| new-tmp |![](/content-docs/asset_files/images/checklist-ok.png)| 2.32 ||
| parse-name |![](/content-docs/asset_files/images/checklist-ok.png)|||

<br/>

### Methods

|Routine|State¹|Version²|Deprecated³|
|-------|-|----------|-------|
| append-to |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-to-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| append-to-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| build-attribute-list-for-copy |![](/content-docs/asset_files/images/checklist-ok.png)| 2.68 ||
| copy |![](/content-docs/asset_files/images/checklist-ok.png)|||
| copy-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| copy-attributes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| copy-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| create-readwrite |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| create-readwrite-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| create-readwrite-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| delete |![](/content-docs/asset_files/images/checklist-ok.png)|||
| delete-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.34 ||
| delete-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.34 ||
| dup |![](/content-docs/asset_files/images/checklist-ok.png)|||
| eject-mountable |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.22 |
| eject-mountable-finish |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.22 |
| eject-mountable-with-operation |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| eject-mountable-with-operation-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| enumerate-children |![](/content-docs/asset_files/images/checklist-ok.png)|||
| enumerate-children-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| enumerate-children-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| equal |![](/content-docs/asset_files/images/checklist-ok.png)|||
| find-enclosing-mount |![](/content-docs/asset_files/images/checklist-ok.png)|||
| find-enclosing-mount-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| find-enclosing-mount-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-basename |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-child |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-child-for-display-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-parent |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-parse-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-relative-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-uri |![](/content-docs/asset_files/images/checklist-ok.png)|||
| get-uri-scheme |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-parent |![](/content-docs/asset_files/images/checklist-ok.png)| 2.24 ||
| has-prefix |![](/content-docs/asset_files/images/checklist-ok.png)|||
| has-uri-scheme |![](/content-docs/asset_files/images/checklist-ok.png)|||
| hash |![](/content-docs/asset_files/images/checklist-ok.png)|||
| is-native |![](/content-docs/asset_files/images/checklist-ok.png)|||
| load-bytes |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| load-bytes-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| load-bytes-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| load-contents |![](/content-docs/asset_files/images/checklist-ok.png)|||
| load-contents-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| load-contents-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| load-partial-contents-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| load-partial-contents-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| make-directory |![](/content-docs/asset_files/images/checklist-ok.png)|||
| make-directory-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| make-directory-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| make-directory-with-parents |![](/content-docs/asset_files/images/checklist-ok.png)| 2.18 ||
| make-symbolic-link |![](/content-docs/asset_files/images/checklist-ok.png)|||
| measure-disk-usage |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| measure-disk-usage-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| measure-disk-usage-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| monitor |![](/content-docs/asset_files/images/checklist-ok.png)| 2.18 ||
| monitor-directory |![](/content-docs/asset_files/images/checklist-ok.png)|||
| monitor-file |![](/content-docs/asset_files/images/checklist-ok.png)|||
| mount-enclosing-volume |![](/content-docs/asset_files/images/checklist-ok.png)|||
| mount-enclosing-volume-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| mount-mountable |![](/content-docs/asset_files/images/checklist-ok.png)|||
| mount-mountable-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move |![](/content-docs/asset_files/images/checklist-ok.png)|||
| move-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.72 ||
| move-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.72 ||
| open-readwrite |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| open-readwrite-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| open-readwrite-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| peek-path |![](/content-docs/asset_files/images/checklist-ok.png)| 2.56 ||
| poll-mountable |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| poll-mountable-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| query-default-handler |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-default-handler-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.60 ||
| query-default-handler-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.60 ||
| query-exists |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-file-type |![](/content-docs/asset_files/images/checklist-ok.png)| 2.18 ||
| query-filesystem-info |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-filesystem-info-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-filesystem-info-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-info |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-info-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-info-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-settable-attributes |![](/content-docs/asset_files/images/checklist-ok.png)|||
| query-writable-namespaces |![](/content-docs/asset_files/images/checklist-ok.png)|||
| read |![](/content-docs/asset_files/images/checklist-ok.png)|||
| read-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| read-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace-contents |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace-contents-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace-contents-bytes-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.40 ||
| replace-contents-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| replace-readwrite |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| replace-readwrite-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| replace-readwrite-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| resolve-relative-path |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute-byte-string |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute-int32 |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute-int64 |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute-string |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute-uint32 |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attribute-uint64 |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attributes-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attributes-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-attributes-from-info |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-display-name |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-display-name-async |![](/content-docs/asset_files/images/checklist-ok.png)|||
| set-display-name-finish |![](/content-docs/asset_files/images/checklist-ok.png)|||
| start-mountable |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| start-mountable-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| stop-mountable |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| stop-mountable-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| supports-thread-contexts |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| trash |![](/content-docs/asset_files/images/checklist-ok.png)|||
| trash-async |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| trash-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.38 ||
| unmount-mountable |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.22 |
| unmount-mountable-finish |![](/content-docs/asset_files/images/checklist-ok.png)![](/content-docs/asset_files/images/checklist-deprecated.png)||2.22 |
| unmount-mountable-with-operation |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||
| unmount-mountable-with-operation-finish |![](/content-docs/asset_files/images/checklist-ok.png)| 2.22 ||

<br/>

1. Status, generated, missing values, deprecated, etc
2. Version of introduction, otherwise it is the release version (2.0)
3. Version of deprecation and is removed in next release

## Legend for the tables

<table class="legend"><tr><th>Symbol</th><th>Meaning</th></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-ok.png" /></td>
<td>Code and documentation is generated</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-implement.png" /></td>
<td>Must be written</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-deprecated.png" /></td>
<td>Removed in next Gnome library release</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-missing.png" /></td>
<td>Not generated, there are missing types</td></tr>

<tr><td><img src="/content-docs/asset_files/images/checklist-no-implement.png" /></td>
<td>Is removed or will not be implemented</td></tr>

