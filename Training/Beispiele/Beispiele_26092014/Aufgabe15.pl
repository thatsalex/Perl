#!/usr/bin/perl
use strict;
chomp(my @zahlen = <STDIN>);
@zahlen = sort {$a <=> $b} @zahlen;
# soll nicht mittels ASCII-Reihenfolge sortiert werden, muss
# eine Vergleichsfunktion verwendet werden.
# Für den numerischen Vergleich wird der <=> Operator (Spaceship)
# verwendet. Zusätzlich werden zwei vordefinierte skalare Variable
# $a und $b verwendet. 
# <=> liefert +1 wenn $a > $b, -1 wenn $a < $b und 0 sonst
print "@zahlen\n";
my $max = pop @zahlen;
my $min = shift @zahlen;
print "Max: $max  Min: $min\n";