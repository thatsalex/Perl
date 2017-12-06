#!/usr/bin/perl
use strict;
my %woerterbuch =(BETREFF => "Beschwerde",
 ABSENDER => "Hartmann", ADRESSAT => "FOM");
 while (my $zeile = <STDIN>)
 {
     foreach my $key(keys %woerterbuch)
     {
        $zeile =~ s/\b$key\b/$woerterbuch{$key}/g;
      
      }
      print "$zeile";
 }
