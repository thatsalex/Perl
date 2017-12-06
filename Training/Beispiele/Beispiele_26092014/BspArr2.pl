#!/usr/bin/perl
 use strict;
 my @kiste = ("Ball","Stift","Zettel");
 print "@kiste\n";
 foreach my $item(@kiste)
 {
    $item .= "lein";
 }
 foreach (@kiste)
 {
    #$_ .= "lein";
    print "$_"."lein\n";
 }
 print "@kiste\n";
 # Suche nach Stiftlein
 foreach (@kiste)
 {
    if ($_ eq "Stiftlein")
    {
        print "Stiftlein gefunden";
    }
 }
 