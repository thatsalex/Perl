#!/usr/bin/perl
use strict;
print "Anzahl Sterne:";
my $anz = <STDIN>;
#my $out = "";
foreach (1..$anz)
{
  #$out = "*"x($anz+1-$_);
  #print "$out\n";
  print "*"x($anz+1-$_)."\n";
}
  