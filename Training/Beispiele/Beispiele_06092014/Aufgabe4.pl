#!/usr/bin/perl
use strict;
print "Gib den Betrag ein:";
my $betrag = <STDIN>;
my $dollar=($betrag - $betrag%100)/100;
my $cent = $betrag%100; 
print "$dollar Dollar und $cent Cent";
$dollar = int ($betrag/100); #andere Möglichkeit