#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my @env_keys = sort(keys %ENV);

print "Content-type: text/html\n\n";
print "<html>\n<head>\n <title>%ENV Contents</title>\n</head>\n<body>\n<table>\n";
foreach my $key (@env_keys) {
  printf(" <tr><td>><strong>%s</strong></td><td>%s</td></tr>\n", $key, $ENV{$key});
}
print "</table>\n</body>\n</html>\n";
