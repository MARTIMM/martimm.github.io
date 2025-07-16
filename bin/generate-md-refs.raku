#!/usr/bin/env -S raku

# References generator to generate 
use v6.d;

use Pod::To::HTML2;
#use RakuDoc::To::HTML;
#use Pod::Load;
use YAMLish;

#-------------------------------------------------------------------------------
constant PROJECTS = $*HOME ~ '/Languages/Raku/Projects/';
constant REFS = PROJECTS ~ 'MARTIMM.github.io/_data/';

constant XMASS = 'MARTIMM.github.io/doc/XMas/';
constant XMASD = 'MARTIMM.github.io/content-docs/XMas/';

constant API1S = 'gnome-api1/';
constant API1D = 'MARTIMM.github.io/content-docs/api1/reference/';

constant SKIMTOOL = 'gnome-source-skim-tool/';
constant API2S = SKIMTOOL ~ 'gnome-api2/';  # S source, D destination
constant API2D = 'MARTIMM.github.io/content-docs/api2/reference/';

my Hash $source-paths = %(
  :Gtk4Api2(PROJECTS ~ API2S ~ 'gnome-gtk4/doc/'),
  :Gdk4Api2(PROJECTS ~ API2S ~ 'gnome-gdk4/doc/'),
  :Gsk4Api2(PROJECTS ~ API2S ~ 'gnome-gsk4/doc/'),
  :GrapApi2(PROJECTS ~ API2S ~ 'gnome-graphene/doc/'),
  :GioApi2(PROJECTS ~ API2S ~ 'gnome-gio/doc/'),

  :Gtk3Api1(PROJECTS ~ API1S ~ 'gnome-gtk3/lib/Gnome/Gtk3/'),

  :xmas(PROJECTS ~ XMASS),
);

my Hash $destination-paths = %(
  :Gtk4Api2(PROJECTS ~ API2D ~ 'Gtk4/'),
  :Gdk4Api2(PROJECTS ~ API2D ~ 'Gdk4/'),
  :Gsk4Api2(PROJECTS ~ API2D ~ 'Gsk4/'),
  :GrapApi2(PROJECTS ~ API2D ~ 'Graphene/'),
  :GioApi2(PROJECTS ~ API2D ~ 'Gio/'),

  :Gtk3Api1(PROJECTS ~ API1D ~ 'Gtk3/'),

  :xmas(PROJECTS ~ XMASD),
);

my Hash $sidebar-paths = %(
  :Gtk4Api2(REFS ~ 'api2-ref-gtk4-sidebar.yml'),
  :Gdk4Api2(REFS ~ 'api2-ref-gdk4-sidebar.yml'),
  :Gsk4Api2(REFS ~ 'api2-ref-gsk4-sidebar.yml'),
  :GrapApi2(REFS ~ 'api2-ref-graphene-sidebar.yml'),
  :GioApi2(REFS ~ 'api2-ref-gio-sidebar.yml'),

  :Gtk3Api1(REFS ~ 'api1-ref-gtk3-sidebar.yml'),
);

#-------------------------------------------------------------------------------
# e.g. generate-md-refs.raku Gtk4Api2 AboutDialog.rakudoc
#      generate-md-refs.raku Gtk4Api2
sub MAIN (
  Str:D $key, Str $raku-doc-name? is copy,
  Bool :skip($skip-existing) = False
) {
  # Go to Githup Pages root dir
  chdir('./content-docs');

#  my Str ( $source-path, $destination-path);

  if $source-paths{$key}:exists and $destination-paths{$key}:exists {
    if ?$raku-doc-name {
 #     $raku-doc-name ~= '.rakudoc' unless $raku-doc-name ~~ m/ rakudoc $/;
 #     my Str $source-file = $source-path ~ $raku-doc-name;
      #generate-html( $source-file, $destination-path, :$skip-existing)
      generate-html( $key, $raku-doc-name, :!skip-existing);
    }

    else {
#    $source-path = $source-paths{$key};
#    $destination-path = $destination-paths{$key};
      for $source-paths{$key}.IO.dir.sort -> Str() $source-file {
#note "$?LINE $source-file.IO.basename().IO.extension('')";
        $raku-doc-name = $source-file.IO.basename.IO.extension('').Str;
note "$?LINE $raku-doc-name";
#        #generate-html( $source-file, $destination-path, :$skip-existing)
#          if $source-file ~~ m/ rakudoc $/;
        generate-html( $key, $raku-doc-name, :$skip-existing);
      }
    }
  }

  else {
    note "\nNo paths found for key $key\nPossible keys are: ",
         $source-paths.keys.join(', ');
  }

note "$?LINE $key $sidebar-paths{$key}";
  generate-sidebar($key) if $sidebar-paths{$key}:exists;
}

#-------------------------------------------------------------------------------
sub USAGE ( ) {

note Q:to/EOUSAGE/;

  This program is a references sidebar generator for Github Pages. It takes
  a Raku document and generates a HTML file. This is placed at the location
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
#  Str $raku-doc-path, Str $raku-doc-dest, Bool :$skip-existing
  Str $key, Str $doc-name, Bool :$skip-existing
) {
#    $source-path = $source-paths{$key};
#    $destination-path = $destination-paths{$key};
  my Str $raku-doc-path = $source-paths{$key} ~ $doc-name;
  if ($raku-doc-path ~ '.rakudoc').IO ~~ :r {
    $raku-doc-path ~= '.rakudoc';
  }

  elsif ($raku-doc-path ~ '.rakumod').IO ~~ :r {
    $raku-doc-path ~= '.rakumod';
  }

  my Str $raku-doc-dest = $destination-paths{$key};
  mkdir $raku-doc-dest, 0o750 unless $raku-doc-dest.IO ~~ :e;

  my IO::Path $basename = $raku-doc-path.IO.basename.IO.extension('');
note "$?LINE $raku-doc-path, $raku-doc-dest, $basename";

  my Array $rak = load-pod($raku-doc-path);

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
        $deprecated-data{$classname} =
          $skim-data{$key}<deprecated-version> // '';
      }
    }
  }

  for $destination-path.IO.dir.sort -> $url is copy {
    next if $url.Str !~~ m/ \. html $/;
    next if $url.Str ~~ /'index.html' $/;

    my $cwd = $*CWD;
    $url ~~ s/^ $cwd \/ //;
    $url = "/content-docs/$url";
    my Str() $name = S/ \.html $// with $url;
    $name = $name.IO.basename;
    note "Sidebar reference of $name: $url";

    my Str $type = 'normal-object';
    if $deprecated-data{$name}:exists {
      $type = 'deprecated-object';
    }

    my Hash $entry = %( :title($name), :$url, :$type);

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
  }
}

#-------------------------------------------------------------------------------
use MONKEY-SEE-NO-EVAL;

sub load-pod ( Str $file where .IO.e --> Array ) {
  my $pod;
  my $contents = $file.IO.slurp;
  
  # Old documentation generator will not be changed. We have to do it here.
  if $file ~~ m/ 'gnome-api1' / {
    # Change first =head1 into ==TITLE
    $contents ~~ s/ '=head1' /=TITLE/;

    # Remove all =comment lines
    $contents ~~ s:g/^^ '=comment' .*? $$//;

    # Drop everything between '=end pod' and '=begin pod'.
    $contents ~~ s:g/ '=end pod' .*? '=begin pod'
                    /=end pod\n=begin pod/;

    # Also from begin of program to first '=begin pod' and
    # from last '=end pod' to end of program.

    # Change all MD image refs into Pod image refs
    while $contents ~~ m/ $<md-ref> = [
                                        '![](' [images | plantuml] \/
                                        <-[\.]>+ \. [png | svg] ')'
                                      ]
                        / {
      my Str $md-ref = $/<md-ref>.Str;
      if $md-ref ~~ m/ images / {
        $md-ref ~~ s/ images /asset_files\/images/;
        $md-ref ~~ s/ '![](' /=for image :src</;
        $md-ref ~~ s/ ')' /> :width<30%> :class<inline>/;
      }

      else {
        $md-ref ~~ s/ plantuml /asset_files\/images\/plantuml/;
        $md-ref ~~ s/ '![](' /=for image :src</;
        $md-ref ~~ s/ ')' /> :width<60%> :class<inline>/;
      }

      $contents ~~ s/ '![](' [images | plantuml] \/
                      <-[\.]>+ \. [png | svg] ')'
                    /$md-ref/;
    }
  }

  $contents ~= "\n" ~ '$pod = $=pod;' ~ "\n";
note $contents;

  try {
    EVAL($contents);

    CATCH {
      default {
        .note;
      }
    }
  }

  $pod
}











=finish


use MONKEY-SEE-NO-EVAL;
use File::Temp; # For tempdir below

my constant CUPSFS = ::("CompUnit::PrecompilationStore::File" ~ ("System","").first({ ::("CompUnit::PrecompilationStore::File$_") !~~ Failure }));
sub load( Str $file where .IO.e ) {
    use nqp;
    my $cache-path = tempdir;
    my $precomp-repo = CompUnit::PrecompilationRepository::Default.new(
            :store(CUPSFS.new(:prefix($cache-path.IO))),
            );
    my $handle = $precomp-repo.try-load(
            CompUnit::PrecompilationDependency::File.new(
                    :src($file),
                    :id(CompUnit::PrecompilationId.new-from-string($file)),
                    :spec(CompUnit::DependencySpecification.new(:short-name($file))),
                    )
            );
    CATCH {
        default {
            die .message.Str;
        }
    }
    nqp::atkey($handle.unit, '$=pod')
}
