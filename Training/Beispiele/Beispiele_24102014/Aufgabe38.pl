#!/usr/bin/perl
use strict;
while (my $zeile = <STDIN>)
{
# globales Suchen: alle Vorkommen werden gefunden
    while ($zeile =~ /(\b\w+)\s+\b\1\b/g)
    {
       print "$1\n";
    
    }
}
