#!/usr/bin/env rakudo

use v6.d;

sub MAIN ( Str $gnome-package ) {
  my Str $checklist-path = "content-docs/api2/check-lists/$gnome-package";
  if $checklist-path.IO ~~ :e {
    my Str $sidebar-class-text = Q:q:to/EOHEAD/;
      - bar_title: "Classes"
        bar_menu:
      EOHEAD

    my Str $sidebar-role-text = Q:q:to/EOHEAD/;

      - bar_title: "Roles"
        bar_menu:
      EOHEAD

    my Str $sidebar-struct-text = Q:q:to/EOHEAD/;

      - bar_title: "Structures"
        bar_menu:
      EOHEAD

    for $checklist-path.IO.dir.sort: { $^a.lc leg $^b.lc } -> $file {
      next if $file.Str ~~ m/ asset_files | index /;
#note $file.Str;

      my Str $title = $file.basename;
      $title ~~ s/ \. md $//;

      given $title {
        when /^ 'R-' / {
          $sidebar-role-text ~= Q:qq:to/EOENTRY/;
              - title: $title
                url: /$checklist-path/$title.html
            EOENTRY
        }

        when /^ 'N-' / {
          $sidebar-struct-text ~= Q:qq:to/EOENTRY/;
              - title: $title
                url: /$checklist-path/$title.html
            EOENTRY
        }
        
        default {
          $sidebar-class-text ~= Q:qq:to/EOENTRY/;
              - title: $title
                url: /$checklist-path/$title.html
            EOENTRY
        }
      }
    }

    my Str $sidebar-file =
       "_data/api2-{$gnome-package}-checklist-sidebar.yml".lc;
    note "Save $sidebar-file";
    $sidebar-file.IO.spurt(
      $sidebar-class-text ~ $sidebar-role-text ~ $sidebar-struct-text
    );
  }

  else {
    note "No checklists found for $gnome-package";
  }
}

