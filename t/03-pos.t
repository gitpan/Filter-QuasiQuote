use strict;
use warnings;

use Test::More tests => 4;

use lib 'lib';
use t::data::QuotePos;

is [:pos|hello|], 'Line 9, Col 4, File t/03-pos.t';
is [:pos|hello|] . ' ' . [:pos|foo|], 'Line 10, Col 4, File t/03-pos.t Line 10, Col 26, File t/03-pos.t';
is ( [:pos|
    hello|], 'Line 11, Col 6, File t/03-pos.t');
is ([:eval|256+1|], 257, 'eval still works');

