#!/usr/bin/perl
use strict;
chomp(my $zeile = <STDIN>);
print "\U$zeile\n";
#Suche nach Telefonnummer
if ( $zeile =~ /(\+? \d+ \s*\d*)/x)
{
  print "Name: $`Telefonnummer $& Wohnort $'";
}
