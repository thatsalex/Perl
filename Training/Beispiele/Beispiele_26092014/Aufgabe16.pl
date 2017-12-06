#!/usr/bin/perl
use strict;
my @song = qw ( They sentenced me to twenty years of boredom );
# Indizes einlesen
chomp (my @index = <STDIN>);
print "@index\n";
#@index durchlaufen und entsprechendes Element von @song ausgeben
foreach (@index)
{
    if ($_ >=0 && $_<= $#song){
        print "$song[$_]\n";
    }
}
my @neuSong = sort @song;
print "@neuSong\n";