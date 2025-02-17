---
title: MARTIMM's projects
layout: sidebar
nav_menu: default-nav
sidebar_menu: api2-tuts-sidebar
---

# Building a user interface

We are now going to make the same window with buttons as we did in the 'Buttons' tutorial with some tweaks added. Also, the setup is totally different. 

## Cambalache
There is a user interface building program called [Cambalache](https://gitlab.gnome.org/jpu/cambalache) and there are a few blogs [here](https://blogs.gnome.org/xjuan/2024/06/21/new-cambalache-development-release-0-91-1/). This program is able to save an XML file describing the user interface. This can be read by the **Gnome::Gtk4::Builder** class.

I leave it to the reader to load all modules. You must be able to do that now. A few constants are made as a convenience.

```
constant MainLoop = Gnome::Glib::N-MainLoop;
constant Window = Gnome::Gtk4::Window;
constant Button = Gnome::Gtk4::Button;
constant Builder = Gnome::Gtk4::Builder;
```

As always, initialise the event loop and write the handler class.
```
my MainLoop $main-loop .= new-mainloop( N-Object, True);
```

Most of it we've seen before in the Buttons tutorial. There are slight changes though. The `.b1-press()` method gets an extra named argument, a string to change its label. Also a method is added called `.query()` which is used to show a tooltip on the button.
 ```
class SH {
  method stopit ( --> gboolean ) {
    say 'close request';
    $main-loop.quit;

    0
  }

  method b1-press (
    Button() :_native-object($button1), Button :$button2, Str :$new-label
  ) {
    say 'button1 pressed';
    $button1.set-label($new-label);
    $button2.set-sensitive(True);
    $button1.set-sensitive(False);
  }

  method b2-press ( ) {
    say 'button2 pressed';
    $main-loop.quit;
  }

  method query (
    gint $x, gint $y, gboolean $kmode, Gnome::Gtk4::Tooltip() $tooltip
    --> gboolean
  ) {
    $tooltip.set-text("tooltip text at ($x,$y)");

    True;
  }
}

my SH $sh .= new;


#-------------------------------------------------------------------------------
my Str $path = "$*HOME/Languages/Raku/Projects/gnome-source-skim-tool";
my Builder $builder .= new-builder;
$builder.load-user-interface("$path/xt/gtk4-tests/Cambalache/t1.ui");

$builder.connect-callback-handler( 'MyWindow', $sh, 'close-request');
$builder.connect-callback-handler(
  'HelloButton', $sh, 'clicked',
  :button2(Button.new(:build-id<GoodByeButton>)),
  :new-label('Have a nice day'),
);

$builder.connect-callback-handler( 'HelloButton', $sh, 'query-tooltip');
$builder.connect-callback-handler( 'GoodByeButton', $sh, 'clicked');

with my Window $window .= new(:build-id<MyWindow>) {
  .present;
}

$main-loop.run;
```






```
<?xml version='1.0' encoding='UTF-8'?>
<!-- Created with Cambalache 0.94.1 -->
<interface>
  <!-- interface-name t1.ui -->
  <requires lib="gtk" version="4.12"/>
  <object class="GtkWindow" id="MyWindow">
    <signal name="close-request" handler="stopit"/>
    <child>
      <object class="GtkGrid">
        <property name="column-spacing">1</property>
        <property name="margin-bottom">30</property>
        <property name="margin-end">30</property>
        <property name="margin-start">30</property>
        <property name="margin-top">30</property>
        <property name="row-spacing">1</property>
        <child>
          <object class="GtkButton" id="HelloButton">
            <property name="has-tooltip">True</property>
            <property name="label">Hello World</property>
            <signal name="clicked" handler="b1-press"/>
            <signal name="query-tooltip" handler="query"/>
            <layout>
              <property name="column">0</property>
              <property name="column-span">1</property>
              <property name="row">0</property>
              <property name="row-span">1</property>
            </layout>
          </object>
        </child>
        <child>
          <object class="GtkButton" id="GoodByeButton">
            <property name="label">Goodbye</property>
            <property name="sensitive">False</property>
            <signal name="clicked" handler="b2-press"/>
            <layout>
              <property name="column">0</property>
              <property name="column-span">1</property>
              <property name="row">1</property>
              <property name="row-span">1</property>
            </layout>
          </object>
        </child>
      </object>
    </child>
  </object>
</interface>
```


