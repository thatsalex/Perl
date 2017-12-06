#!/usr/bin/perl
use strict;
print "Radius:";
my $radius = <STDIN>;
if ($radius < 0) {
  $radius = 0;
}
my $umf = $radius * 2 * 3.1415;
print "Umfang: $umf";

