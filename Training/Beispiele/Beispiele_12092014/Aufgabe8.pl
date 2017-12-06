#!/usr/bin/perl
use strict;
print "Geben Sie ein Wort ein:";
chomp(my $wort = <STDIN>);
#Length liefert Anzahl Zeichen
my $len = length($wort);
foreach(1..$len)
{
  print "$_ $wort\n";
}