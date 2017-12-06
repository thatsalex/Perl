#!/usr/bin/perl
use strict;
# <=> : vergleicht zwei Werte und liefert -1, 0 oder 1
# je nachdem der linke Werte kleiner als der rechte, beide
# gleich sind oder der linke Wert größer als der rechte ist
# Verwendung in sort: sort {$a <=> $b}
my %tabelle = (Nickel=> 0.05, Dime => 0.1, Halfdollar => 0.5,
    Penny => 0.01, Quarter => 0.25);
my $kommando;
do{
  print "SL=sortiert lexikalisch SN=Sortiert numerisch\n";
  print "A=Add R=Remove E=Exit\n" ;
  chomp($kommando=<STDIN>);
  if ($kommando eq 'SL')
  {
      foreach my $k (sort keys %tabelle)
      {
        print "$k: $tabelle{$k}\n";
        }
  }
  elsif ($kommando eq 'SN')
  {
      foreach my $k (sort {$tabelle{$a} <=> $tabelle{$b}} keys %tabelle)
      {
        print "$tabelle{$k}:$k\n";
      }
      #andere Möglichkeit
      foreach my $v (sort {$a <=> $b} values %tabelle)
      {
        print "$v\n";
      }
 
  
  }
  elsif ($kommando eq 'A')
   {
    print "Schluessel:";
    chomp(my $k = <STDIN>);
    print "Wert: ";
    chomp (my $v = <STDIN>);
    $tabelle{$k} = $v;
   }
  
  elsif ($kommando eq 'R')
   {
     print "Schluessel:";
    chomp(my $k = <STDIN>);
     delete $tabelle{$k};

   }

} while ($kommando ne 'E');