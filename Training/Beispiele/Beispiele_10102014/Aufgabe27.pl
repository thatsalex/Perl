#!/usr/bin/perl
use strict;
print "Filename:";
chomp (my $filename = <STDIN>);
if (!open DATEI,"<$filename")
{
    die "cannot open $filename" ;
}
my $anzZeilen;
my $anzZeichen;
my $anzWoerter;
my @woerter;
while (my $zeile = <DATEI>)
{
   $anzZeilen++;
   chomp ($zeile);
   $anzZeichen += length($zeile);
   # split zerlegt $zeile anhand des Trennzeichens Blank
   # die gefundenden Strings zwischen den Blanks werden
   # in einem Array gespeichert. Dieses Array ist der
   # Rückgabewert von split
   @woerter = split / /,$zeile;
   print "@woerter\n";
   foreach (@woerter)
   {
   # Leereinträge sollen nicht mitgezählt werden
       if ($_ ne ''){
          $anzWoerter += 1;
      }
   }
    
} 
 close (DATEI);
print "Es waren $anzZeilen Zeilen und $anzZeichen Zeichen\n";
print "Es waren $anzWoerter Woerter\n";
