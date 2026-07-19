#!/usr/bin/env -S raku

# References generator to generate html pages of the rakudoc documents. Also
# it recreates the sidebar if necessary.

use v6.d;

# In the Raku::Pod::Render distro at
# github.com/finanalyst/raku-pod-render/blob/master/lib/Pod/To/HTML2.rakumod
# github.com/finanalyst/raku-pod-render/blob/master/Pod2HTML2.md
#use lib '/home/marcel/Languages/Raku/External/raku-pod-render/lib';
#use Pod::To::HTML2;
#use RakuDoc::To::HTML;
#use Pod::Load;
use YAMLish;
#use RakuDoc::Processor;

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

constant GTS = 'GnomeTools/';
constant GTD = 'MARTIMM.github.io/content-docs/GnomeTools/reference/';

my Hash $source-paths = %(
  :Gtk4Api2(PROJECTS ~ API2S ~ 'gnome-gtk4/lib/Gnome/Gtk4/'),
  :Gdk4Api2(PROJECTS ~ API2S ~ 'gnome-gdk4/lib/Gnome/Gdk4/'),
  :Gsk4Api2(PROJECTS ~ API2S ~ 'gnome-gsk4/lib/Gnome/Gsk4/'),
  :GrapApi2(PROJECTS ~ API2S ~ 'gnome-graphene/lib/Gnome/Graphene/'),
  :GioApi2(PROJECTS ~ API2S ~ 'gnome-gio/lib/Gnome/Gio/'),
  :NApi2(PROJECTS ~ API2S ~ 'gnome-native/lib/Gnome/N/'),
  :GObjApi2(PROJECTS ~ API2S ~ 'gnome-gobject/lib/Gnome/GObject/'),
  :GlibApi2(PROJECTS ~ API2S ~ 'gnome-glib/lib/Gnome/Glib/'),

  :Gtk3Api1(PROJECTS ~ API1S ~ 'gnome-gtk3/lib/Gnome/Gtk3/'),
  :Gdk3Api1(PROJECTS ~ API1S ~ 'gnome-gdk3/lib/Gnome/Gdk3/'),
  :GioApi1(PROJECTS ~ API1S ~ 'gnome-gio/lib/Gnome/Gio/'),
  :GlibApi1(PROJECTS ~ API1S ~ 'gnome-glib/lib/Gnome/Glib/'),
  :GObjApi1(PROJECTS ~ API1S ~ 'gnome-gobject/lib/Gnome/GObject/'),

  # GnomeTools
  :GTGtk(PROJECTS ~ GTS ~ 'lib/GnomeTools/Gtk/'),
  :GTGio(PROJECTS ~ GTS ~ 'lib/GnomeTools/Gio/'),

  :xmas(PROJECTS ~ XMASS),
);

my Hash $destination-paths = %(
  :Gtk4Api2(PROJECTS ~ API2D ~ 'Gtk4/'),
  :Gdk4Api2(PROJECTS ~ API2D ~ 'Gdk4/'),
  :Gsk4Api2(PROJECTS ~ API2D ~ 'Gsk4/'),
  :GrapApi2(PROJECTS ~ API2D ~ 'Graphene/'),
  :GioApi2(PROJECTS ~ API2D ~ 'Gio/'),
  :NApi2(PROJECTS ~ API2D ~ 'N/'),
  :GObjApi2(PROJECTS ~ API2D ~ 'GObject/'),
  :GlibApi2(PROJECTS ~ API2D ~ 'Glib/'),

  :Gtk3Api1(PROJECTS ~ API1D ~ 'Gtk3/'),
  :Gdk3Api1(PROJECTS ~ API1D ~ 'Gdk3/'),
  :GioApi1(PROJECTS ~ API1D ~ 'Gio/'),
  :GlibApi1(PROJECTS ~ API1D ~ 'Glib/'),
  :GObjApi1(PROJECTS ~ API1D ~ 'GObject/'),

  # GnomeTools
  :GTGtk(PROJECTS ~ GTD ~ 'Gtk/'),
  :GTGio(PROJECTS ~ GTD ~ 'Gio/'),

  :xmas(PROJECTS ~ XMASD),
);

my Hash $sidebar-paths = %(
  :Gtk4Api2(REFS ~ 'api2-ref-gtk4-sidebar.yml'),
  :Gdk4Api2(REFS ~ 'api2-ref-gdk4-sidebar.yml'),
  :Gsk4Api2(REFS ~ 'api2-ref-gsk4-sidebar.yml'),
  :GrapApi2(REFS ~ 'api2-ref-graphene-sidebar.yml'),
  :GioApi2(REFS ~ 'api2-ref-gio-sidebar.yml'),
  :NApi2(REFS ~ 'api2-ref-n-sidebar.yml'),
  :GObjApi2(REFS ~ 'api2-ref-gobject-sidebar.yml'),
  :GlibApi2(REFS ~ 'api2-ref-glib-sidebar.yml'),

  :Gtk3Api1(REFS ~ 'api1-ref-gtk3-sidebar.yml'),
  :Gdk3Api1(REFS ~ 'api1-ref-gdk3-sidebar.yml'),
  :GioApi1(REFS ~ 'api1-ref-gio-sidebar.yml'),
  :GlibApi1(REFS ~ 'api1-ref-glib-sidebar.yml'),
  :GObjectApi1(REFS ~ 'api1-ref-gobject-sidebar.yml'),

  # GnomeTools
  :GTGtk(REFS ~ 'gnometools-ref-gtk-sidebar.yml'),
  :GTGio(REFS ~ 'gnometools-ref-gio-sidebar.yml'),
);

#-------------------------------------------------------------------------------
# e.g. generate-md-refs.raku Gtk4Api2 AboutDialog.rakudoc
#      generate-md-refs.raku Gtk4Api2
sub MAIN ( Str:D $key, Str $raku-doc-name? is copy, Bool :$skip = False ) {

  # Go to Githup Pages root dir
#  chdir('./content-docs');

  if $source-paths{$key}:exists and $destination-paths{$key}:exists {
    if ?$raku-doc-name {
      generate-html( $key, $raku-doc-name, :!skip);
    }

    else {
      for $source-paths{$key}.IO.dir.sort -> Str() $source-file {
#note "$?LINE $source-file";
        next unless ?$source-file and
                     $source-file ~~ m/ '.' [rakudoc | rakumod]/;

        # Skip Misc module
        next if $source-file ~~ m/ Misc /;

        $raku-doc-name = $source-file.IO.basename.IO.extension('').Str;
#note "$?LINE $raku-doc-name";
        generate-html( $key, $raku-doc-name, :$skip);
      }
    }
  }

  else {
    note "\nNo paths found for key $key\nPossible keys are: ",
         $source-paths.keys.join(', ');
  }

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
    skip                Skip previously generated documents

  EOUSAGE
}

#-------------------------------------------------------------------------------
# Read doc and generate HTML and store in $raku-doc-dest
sub generate-html ( Str $key, Str $doc-name, Bool :$skip ) {

  # First check doc directory first
  my Str $raku-doc-path = $source-paths{$key} ~ $doc-name;
  $raku-doc-path ~~ s/ 'lib' \/ 'Gnome' .* $/doc\/$doc-name.rakudoc/;
  if $raku-doc-path.IO.r {
  }

  # Then check module directory
  elsif ($raku-doc-path = $source-paths{$key} ~ $doc-name ~ '.rakumod').IO.r {
  }

  else {
    die 'Cannot find rakumod nor rakudoc file';
  }

#`{{
  my Str $raku-doc-path = $source-paths{$key} ~ $doc-name;
  if ($raku-doc-path ~ '.rakumod').IO ~~ :r {
    $raku-doc-path ~= '.rakumod';
  }

  else {
    $raku-doc-path ~~ s/ 'lib' \/ 'Gnome' .* $/doc\/$doc-name.rakudoc/;

    die 'Cannot find rakumod nor rakudoc file' unless $raku-doc-path.IO ~~ :r;
  }
}}
note "$?LINE $key, $doc-name, $raku-doc-path";

  my Str $raku-doc-dest = $destination-paths{$key};
  mkdir $raku-doc-dest, 0o750 unless $raku-doc-dest.IO ~~ :e;

  my IO::Path $basename = $raku-doc-path.IO.basename.IO.extension('');
#  note "\n$basename";
  note "  Source: $raku-doc-path";
  note "  Destination: $raku-doc-dest";


  my Str $filename = "$raku-doc-dest$basename";
  return if ($skip and ("$filename.html".IO ~~ :e));
  
#  my Array $raku-pod = load-pod($raku-doc-path);

  note "  Processing ", $filename.IO.basename;
#  note "shell \"raku --doc=HTML2 $raku-doc-path > $filename.html\"";
  my Str() $sdir = $raku-doc-path.IO.parent;
#  my Str() $ddir = $filename.IO.parent;
#  my Str() $sname = $raku-doc-path.IO.basename;
note "\n\nraku -MRakuDoc::Render --rakudoc=HTML '$raku-doc-path' > '/tmp/$doc-name'\n ";

  # For the moment we need to explicitly turn on RakuAST processing
  #TODO remove when version raku 6.e
  %*ENV<RAKUDO_RAKUAST> = 1;

  # We want to have an alternative CSS setup using the files from a github
  # pages theme and css from the previous html generator
  %*ENV<ALT_CSS> = 'assets/css/style.css';

  # Generate the HTML file
  my Proc $p =
    shell "raku -MRakuDoc::Render --rakudoc=HTML '$raku-doc-path'", :out;

  # Prefix the text with the github pages frontmatter marks
  my Str $result = "---\n---\n";

  # Get the result for post processing
  for $p.out.lines -> Str $line {
    $result ~= "$line\n";
  }
  $p.out.close;

  # Change the class for the table of contents
  $result ~~ s/ 'class="toc"' /class="toc pod-content"/;

  # Store the result at its proper place.
  note "Store at $filename.html";
  "$filename.html".IO.spurt($result);

#  %*ENV<RAKOPTS> = 'NoTOC NoMETA NoGloss NoFoot';
#  my Proc $p = shell "raku --doc=HTML2 $raku-doc-path > $filename.html";

#`{{
  # See also ProcessedPod.rakumod TWEAK. Can be set via %ENV.
  # Attributes are defined as 'is rw'
  with my Pod::To::HTML2 $pr .= new {
    .pod-file.path = $raku-doc-path;
    .pod-file.title-target = '____top';
    .no-toc = True if $raku-doc-path ~~ m/ XMas /;
    .no-glossary = True;
    .no-footnotes = True;
    .process-pod($raku-pod);
    .no-meta = True;
    "$filename.html".IO.spurt("---\n---\n" ~ .source-wrap(:$filename));
  }
  note $pr.pod-file.gist;
}}


  note "  Generated {$filename.IO.basename}.html";
}

#-------------------------------------------------------------------------------
sub generate-sidebar( Str $key ) {
  my Str $destination-path = $destination-paths{$key};
  my Str $sidebar-path = $sidebar-paths{$key};

  chdir('./content-docs');
  note "\nAdd entries to sidebar at $sidebar-path";

  my @classes = ();
  my @roles = ();
  my @types = ();
  my @structures = ();

  my Hash $deprecated-data = %();
  my Str $prefix-name = '';

  # Special coloring for deprecated modules
  # TODO also for Api1?
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

  # Make sidebar and fill with references of all found html files
  for $destination-path.IO.dir.sort -> $url is copy {
    next if $url.Str !~~ m/ \. html $/;
    next if $url.Str ~~ /'index.html' $/;

    my $cwd = $*CWD;
    $url ~~ s/^ $cwd \/ //;
    $url = "/content-docs/$url";
    my Str() $name = S/ \.html $// with $url;
    $name = $name.IO.basename;
    note "  Url of $name: $url";

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

#`{{
#-------------------------------------------------------------------------------
#use MONKEY-SEE-NO-EVAL;

sub load-pod ( Str $file --> Array ) {
  if $file.IO !~~ :r {
    note "$file does not exist or isn't readable";
    return [];
  }

  my Str $contents = $file.IO.slurp;

  # Old documentation generator will not be changed. We have to do it here.
  if $file ~~ m/ 'gnome-api1' / {
    # Change first =head1 into =TITLE
    $contents ~~ s/ '=head1' /=TITLE/;

    # Remove all =comment lines
    $contents ~~ s:g/^^ '=comment' .*? $$//;

    # To prevent loading code, all code must be removed before evalling. 
    # Because we keep all code in the same environment without
    # cleaning up, clashes with new loaded modules will occur.

    # Drop everything after =finish, there might be some saved experiments.
    my Int $last-pos = $contents.index('=finish');
    if ?$last-pos {
       my Str $last-code = $contents.substr( $last-pos, $contents.chars - 1);
       $contents ~~ s/ $last-code $//;
    }

    # Drop everything between '=end pod' and '=begin pod'.
    $contents ~~ s:g/ '=' end \s pod .*? '=' begin \s pod
                    /=end pod\n=begin pod/;

    # Also from begin of program to first '=begin pod' (seems to work without)
#    $contents ~~ s/^ .*? '=' begin \s pod/=begin pod\n/;

    # from last '=end pod' to end of program.
    $last-pos = $contents.rindex('=end pod');
    if ?$last-pos {
      my Str $last-code = $contents.substr( $last-pos, $contents.chars - 1);
      $contents ~~ s/ $last-code $//;
      $contents ~= "=end pod\n";
    }

    # Remove the end and start pod blocks to turn it into one pod block
    $contents ~~ s:g/ '=end pod' "\n" '=begin pod' "\n" //;

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

  # EVALFILE has limitations so cleanup code is essential
  # Remove everything after '=finish'
  if $contents ~~ m/^^ '=finish' $$/ {
    $contents ~~ s/'=finish' .* $//;
  }

  # Remove commented out code
  $contents ~~ s:g/ '#`{{' .*? '}}' //;

  # And drop all pod comments while w're at it
  $contents ~~ s:g/^^ '=comment' .*? $$//;

  # Drop all code
  $contents ~~ s:g/ '=end' \s 'pod' .*? '=begin' \s 'pod' //;
  $contents ~~ s:g/^ .*? '=begin' \s 'pod' /=begin pod/;
  $contents ~~ s:g/ '=end' \s 'pod' .* $/=end pod/;


  my $pod;
  $contents ~= "\n\n" ~ '$pod = $=pod;' ~ "\n\n";

  try {
    "/tmp/mod-doc.txt".IO.spurt($contents);
    EVALFILE "/tmp/mod-doc.txt";
#    EVAL $contents;

    CATCH {
      default {
        .die;
      }
    }
  }

  $pod
}

}}
