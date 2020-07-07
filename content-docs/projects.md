---
title: MARTIMM's projects
layout: sidebar

nav_menu: project-nav
sidebar_menu: main-sidebar
---

# Projects


Here is a small list of projects I started or want to start or already
working on
* Above mentioned modules MongoDB and BSON needs extending and also maintenance. There are maybe also issues like performance which I need to attend to. The newest change in testing is that a mongo server is started in a sandboxed environment leaving any existing running database in peace.
The disadvantage of this approach is that testing takes more time because of mongod startup and init time.
There are also advantages like no accidental messing up user data and the testing of several mongodb facilities like authentication, replication
and sharding. It is also possible to create more interesting test cases
with other databases and collections and references between them.
<!--
To follow the project look at the <a href="https://github.com/MARTIMM/mongo-perl6-driver/wiki" target="_blank">driver wiki</a>.
-->
* The library project, also mentioned above. Need much work yet.
