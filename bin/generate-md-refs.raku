#!/usr/bin/env -S raku

# References generator to generate 
use v6.d;

use Pod::To::HTML2;
#use RakuDoc::To::HTML;
use Pod::Load;
use YAMLish;

#-------------------------------------------------------------------------------
constant PROJECTS = $*HOME ~ '/Languages/Raku/Projects/';
constant REFS = PROJECTS ~ 'MARTIMM.github.io/_data/';

constant XMASS = 'MARTIMM.github.io/doc/XMas/';
constant XMASD = 'MARTIMM.github.io/content-docs/XMas/';

constant SKIMTOOL = 'gnome-source-skim-tool/';
constant API2S = SKIMTOOL ~ 'gnome-api2/';
constant API2D = 'MARTIMM.github.io/content-docs/api2/reference/';

my Hash $source-paths = %(
  :Gtk4Api2(PROJECTS ~ API2S ~ 'gnome-gtk4/doc/'),
  :Gdk4Api2(PROJECTS ~ API2S ~ 'gnome-gdk4/doc/'),
  :Gsk4Api2(PROJECTS ~ API2S ~ 'gnome-gsk4/doc/'),
  :GrapApi2(PROJECTS ~ API2S ~ 'gnome-graphene/doc/'),
  :GioApi2(PROJECTS ~ API2S ~ 'gnome-gio/doc/'),

  :xmas(PROJECTS ~ XMASS),
);

my Hash $destination-paths = %(
  :Gtk4Api2(PROJECTS ~ API2D ~ 'Gtk4/'),
  :Gdk4Api2(PROJECTS ~ API2D ~ 'Gdk4/'),
  :Gsk4Api2(PROJECTS ~ API2D ~ 'Gsk4/'),
  :GrapApi2(PROJECTS ~ API2D ~ 'Graphene/'),
  :GioApi2(PROJECTS ~ API2D ~ 'Gio/'),

  :xmas(PROJECTS ~ XMASD),
);

my Hash $sidebar-paths = %(
  :Gtk4Api2(REFS ~ 'api2-ref-gtk4-sidebar.yml'),
  :Gdk4Api2(REFS ~ 'api2-ref-gdk4-sidebar.yml'),
  :Gsk4Api2(REFS ~ 'api2-ref-gsk4-sidebar.yml'),
  :GrapApi2(REFS ~ 'api2-ref-graphene-sidebar.yml'),
  :GioApi2(REFS ~ 'api2-ref-gio-sidebar.yml'),
);

#-------------------------------------------------------------------------------
# e.g. generate-md-refs.raku Gtk4Api2 AboutDialog.rakudoc
#      generate-md-refs.raku Gtk4Api2
sub MAIN (
  Str:D $key, Str $raku-doc-name? is copy,
  Bool :skip($skip-existing) = False
) {
  chdir('./content-docs');

  my Str ( $source-path, $destination-path);

  if $source-paths{$key}:exists and
     $destination-paths{$key}:exists
  {
    $source-path = $source-paths{$key};
    $destination-path = $destination-paths{$key};
    if ?$raku-doc-name {
      #$raku-doc-name ~= '.rakudoc' unless $raku-doc-name ~~ m/ rakudoc $/;
      my Str $source-file = $source-path ~ $raku-doc-name;
      generate-html( $source-file, $destination-path, :!skip-existing);
    }

    else {
      for $source-path.IO.dir.sort -> Str() $source-file {
        generate-html( $source-file, $destination-path, :$skip-existing)
          if $source-file ~~ m/ rakudoc $/;
      }
    }
  }

  generate-sidebar($key) if $sidebar-paths{$key}:exists;
}

#-------------------------------------------------------------------------------
sub USAGE ( ) {

note Q:to/EOUSAGE/;

  This program is a references sidebar generator for Github Pages. It takes
  a Raku document a generates a HTML file. This is placed at the location
  found in a Hash using the provided key. The same key is also used to find
  the source path of the key.

  When the HTML is generated a reference sidebar file is generated referencing
  all the HTML files found in the destination directory.

  Usage:
    $*PROGRAM_NAME <key> [<raku-doc-name>] [<options>]

  Arguments:
    key                 Key used to find paths in hashes

    raku-doc-name       Document holding rakudoc text

  Options:
    skip-existing       Skip generating documents which have
                        been processed before

  EOUSAGE
}

#-------------------------------------------------------------------------------
# Read doc and generate HTML and store in $raku-doc-dest

sub generate-html (
  Str $raku-doc-path, Str $raku-doc-dest, Bool :$skip-existing
) {
  my IO::Path $basename = $raku-doc-path.IO.basename.IO.extension('');
  my Array $rak;
  try {
    $rak = load($raku-doc-path);

    CATCH {
      default {
        die "Weird error loading pod document from $raku-doc-path",
             "\nPossibly not existent";
      }
    }
  }
  my Str $filename = "$raku-doc-dest$basename";
  return if $skip-existing and ("$filename.html".IO ~~ :e);

  my Pod::To::HTML2 $pr .= new;
#  my RakuDoc::To::HTML $pr .= new;
  $pr.pod-file.path = $raku-doc-path;
  $pr.process-pod($rak);
  $pr.no-toc = True if $raku-doc-path ~~ m/ XMas /;
  $pr.no-glossary = True;
  $pr.no-footnotes = True;
#  $pr.title-target($basename.Str);
  "$filename.html".IO.spurt: "---\n---\n" ~ $pr.source-wrap(:$filename);

  note "Generated {$filename.IO.basename}.html";
}

#-------------------------------------------------------------------------------
sub generate-sidebar( Str $key ) {
  my Str $destination-path = $destination-paths{$key};
  my Str $sidebar-path = $sidebar-paths{$key};

  my @classes = ();
  my @roles = ();
  my @types = ();
  my @structures = ();

  my Hash $deprecated-data = %();
  my Str $prefix-name = '';
  if $key ~~ m/ Api2 / {
    my Str $path-part = S/ Api2 // with $key;
    my Str $skimfile = PROJECTS ~ SKIMTOOL ~ 
                       "/data/SkimToolData/$path-part/repo-object-map.yaml";
    my Hash $skim-data = %();
    $skim-data = load-yaml($skimfile.IO.slurp) if $skimfile.IO.e;

    for $skim-data.keys -> $key {
      if ?$skim-data{$key}<deprecated> {
        my Str $classname = $skim-data{$key}<class-name>;
        $classname ~~ s/ Gnome '::' <-[:]>+ '::' //;
        $deprecated-data{$classname} = $skim-data{$key}<deprecated-version> // '';
      }
    }
  }

  for $destination-path.IO.dir.sort -> $f is copy {
    next if $f.Str !~~ m/ \. html $/;
    next if $f.Str ~~ /'index.html' $/;

my $cwd = $*CWD;
    $f ~~ s/^ $cwd //;
    my Str() $name = $f.IO.basename.IO.extension('');

#note "$?LINE $name, $f.Str()";

    my Str $type = 'normal-object';
    if $deprecated-data{$name}:exists {
      $type = 'deprecated-object';
    }

    my Hash $entry = %( :title($name), :url($f), :$type);

    given $name {
      when /^ 'R-' / {
        @roles.push: $entry;
      }

      when /^ 'T-' / {
        @types.push: $entry;
      }

      when /^ 'N-' / {
        @structures.push: $entry;
      }

      default {
        @classes.push: $entry;
      }
    }

    my $sidebar = '';
    if @classes.elems {
      $sidebar ~= Q:to/EOC/;
        - bar_title: "Classes"
          bar_menu:
        EOC
      for @classes -> $entry {
        $sidebar ~= "   - title: \"$entry<title>\"\n";
        $sidebar ~= "     url: \"$entry<url>\"\n";
        $sidebar ~= "     type: \"$entry<type>\"\n";
      }
      
      $sidebar ~= "\n";
    }

    if @roles.elems {
      $sidebar ~= Q:to/EOC/;
        - bar_title: "Roles"
          bar_menu:
        EOC
      for @roles -> $entry {
        $sidebar ~= "   - title: \"$entry<title>\"\n";
        $sidebar ~= "     url: \"$entry<url>\"\n";
        $sidebar ~= "     type: \"$entry<type>\"\n";
      }
      
      $sidebar ~= "\n";
    }

    if @types.elems {
      $sidebar ~= Q:to/EOC/;
        - bar_title: "Types"
          bar_menu:
        EOC
      for @types -> $entry {
        $sidebar ~= "   - title: \"$entry<title>\"\n";
        $sidebar ~= "     url: \"$entry<url>\"\n";
        $sidebar ~= "     type: \"$entry<type>\"\n";
      }
      
      $sidebar ~= "\n";
    }

    if @structures.elems {
      $sidebar ~= Q:to/EOC/;
        - bar_title: "Structures"
          bar_menu:
        EOC
      for @structures -> $entry {
        $sidebar ~= "   - title: \"$entry<title>\"\n";
        $sidebar ~= "     url: \"$entry<url>\"\n";
        $sidebar ~= "     type: \"$entry<type>\"\n";
      }
      
      $sidebar ~= "\n";
    }

    $sidebar-path.IO.spurt($sidebar);

#note "$?LINE\n$sidebar";

  }
}