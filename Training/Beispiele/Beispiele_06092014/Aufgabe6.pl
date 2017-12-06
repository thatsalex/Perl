#!/usr/bin/perl
use strict;
print "Schrauben:";
my $schraube = <STDIN>;
print "Muttern:";
my $mutter = <STDIN>;
print "U.scheiben:";
my $scheiben = <STDIN>;
if ($schraube > $mutter)
{
  print "Bestellung überprüfen\n";
}
else {
  print "Bestellung ok\n";
}
my $preis = $schraube*5 + $mutter*3 + $scheiben;
print "Gesamtbetrag: $preis Cent"