use strict;
use Template::Test;

test_expect(\*DATA, undef, { price => 10000 });

__END__
--test--
[% USE Comma -%]
[% FILTER comma -%]
1000.00
[%- END %]
--expect--
1,000.00

--test--
[% USE Comma -%]
[% price | comma %]
--expect--
10,000

--test--
[% USE Comma -%]
[% FILTER comma -%]
This item costs 1000 yen.
[%- END %]
--expect--
This item costs 1,000 yen.
