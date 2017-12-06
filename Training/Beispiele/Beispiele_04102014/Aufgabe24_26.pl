#!/usr/bin/perl
use strict;
# Alle Zeilen > 20 in neuer Datei mit Zeilennummer
# speichern
my $filename = 'd:\perl\ws1415\test.txt';
if ( !open DATEI,"<$filename")
{
# Abbruch des Programmes mit Fehlermeldung
# falls Datei nicht geöffnet werden kann
  die "$filename kann nicht geoeffnet werden: $!";
}
# Datei zum Schreiben öffnen
my $ausFilename =  'd:\perl\ws1415\test2.txt';

 if ( !open AUS,">$ausFilename")
{
# Abbruch des Programmes mit Fehlermeldung
# falls Datei nicht geöffnet werden kann
  die "$filename kann nicht geoeffnet werden: $!";
} 
#Zähler für Zeilennummern
my $zaehler;
# Aus Datei lesen
while (my $zeile =<DATEI>)
{
  #in $_ steht aktuelle Zeile
  #Achtung \n zählt als Zeichen
  # length liefert Anzahl zeichen einer Zeichenkette
  if ( length($zeile) > 21) {
  $zaehler++;
  print AUS "$zaehler: $zeile";
  # auf Datei mit Zeilennummer schreiben
  }
}
close DATEI;
close AUS;
# datei zum Schreiben schließen