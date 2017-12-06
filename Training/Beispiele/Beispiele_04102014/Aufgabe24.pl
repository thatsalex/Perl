#!/usr/bin/perl
use strict;

my $filename = 'd:\perl\ws1415\test.txt';
if ( !open DATEI,"<$filename")
{
# Abbruch des Programmes mit Fehlermeldung
# falls Datei nicht geöffnet werden kann
  die "$filename kann nicht geoeffnet werden: $!";
}
# Aus Datei lesen
while (my $zeile =<DATEI>)
{
  #in $_ steht aktuelle Zeile
  #Achtung \n zählt als Zeichen
  # length liefert Anzahl zeichen einer Zeichenkette
  if ( length($zeile) > 21) {
  print "$zeile";
  }
}
close DATEI;
