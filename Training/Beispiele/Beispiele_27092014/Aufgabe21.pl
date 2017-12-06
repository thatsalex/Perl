#!/usr/bin/perl
use strict;
my @besucher;
sub greet
{
  print "Hallo $_[0]!";  #Begrüßung
  
  if (@besucher <1){ #Anzahl abfragen
      print "Du bist der erste hier!";
  }
  else{ 
       print "Es waren schon da: ";
       &Liste(@besucher);
  }
  print "\n";
  push @besucher,$_[0]; #Besucher speichern
}
sub Liste
{    
    foreach (@_)  #Besucher ausgeben
    {
      print "$_ ";
    }
}
greet("Fritz");
greet("Elli");
greet ("Harald");
greet ("Betti");
