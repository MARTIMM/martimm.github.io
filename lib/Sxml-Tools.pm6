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
}
