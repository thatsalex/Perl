#!/usr/bin/perl
use strict;
print "Anfang:";
chomp(my $anf = <STDIN>);
print "Ende:";
chomp (my $end = <STDIN>);
foreach ($anf..$end)
{
  print "$_\n";  #$_ enth�lt aktuellen Wert
  # des Scheifendurchgangs
}