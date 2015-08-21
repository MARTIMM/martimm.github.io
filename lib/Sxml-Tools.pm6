use v6;

BEGIN {
  @*INC.unshift('/home/marcel/Languages/Perl6/Projects/Semi-xml/lib');
}

use Semi-xml;
use XML;

class Sxml-Tools {
  has Hash $.symbols = {};

  # $!strong-a reference=<ref> test=<txt> []
  # This method will make a strong types link to an external web page
  #
  method strong-a ( XML::Element $parent, Hash $attrs is copy ) {
    my $reference = $attrs<reference>:delete // '';
    my $text = $attrs<text>:delete // '';

    my $strong = XML::Element.new(:name('strong'));
    $parent.append($strong);

    my $a = XML::Element.new( :name('a')
                            , :attribs({ href => $reference,
                                         target => '_blank'
                                       }
                                      )
                            );
    $strong.append($a);

    $a.append(XML::Text.new(:$text));

    $strong.append(XML::Element.new(:name('br')));
  }

  # $!load-test-example path=<file> []
  # This method will load an example file and will pick the piece of code
  # enclosed in lines of #`{{Example-Start}} and #`{{Example-Stop}}
  #
  method load-test-example ( XML::Element $parent, Hash $attrs is copy ) {
    my $path = $attrs<path>:delete // '';

    my $text;
    if $path.IO ~~ :r {
      $text = slurp($path);
      
      # Find all sections between code markers
      #
      $text ~~ m:g:i/'#`{{Example-Start}}'(.*?)<?before '#`{{Example-Stop}}'>/;
      my $c;
      if $/.elems {
        for @$/ -> $m is copy {
          # I am not shure why it is included but we remove it here
          #
          $m ~~ s:i/\n? '#`{{Example-Start}}' \n?//;
          
          # Put all code sections together and separate them with '...'
          #
          $c ~= ?$c ?? "...\n$m\n" !! "$m";
        }

        $text = $c;
      }
    }

    else {
      $text = 'empty file or not found';
    }

    # Make a pre section and place the selected code in it.
    #
    my $pre = XML::Element.new(:name('pre'));
    $parent.append($pre);
    $pre.append(Semi-xml::Text.new(:$text));
  }
}
