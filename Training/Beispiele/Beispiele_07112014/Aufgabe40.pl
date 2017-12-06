#!/usr/bin/perl
use strict;
while ( chomp(my $text = <STDIN>))
{
    #Fred durch Wilma und Wilma durch Fred ersetzen
    # i : insensitiv
    # g: global, auch mehrfaches Vorkommen wird
    # ersetzt
    $text =~ s/Fred/\n/gi;
    $text =~ s/Wilma/Fred/gi;
    $text =~ s/\n/Wilma/gi;
    print "$text\n";
 
}