#!/usr/bin/perl
use strict;
sub swap($$)
{
  ($_[0],$_[1]) = ($_[1],$_[0]);
}
chomp(my $z1 = <STDIN>);
chomp(my $z2 = <STDIN>);
swap ($z1,$z2);
print "$z1 $z2\n";
