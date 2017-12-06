#!/usr/bin/perl
use strict;
print "Geben Sie n ein:";
my $n = <STDIN>;
my $qsum =0;
my $csum = 0;
#foreach (1..$n)
for (my $i=1;$i<=$n; $i++)
{
  $qsum += $i**2;
  $csum += $i **3;
}
print "Quadratsumme: $qsum\n";
print "Kubiksumme: $csum";
