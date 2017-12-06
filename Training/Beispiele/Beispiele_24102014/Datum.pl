#!/usr/bin/perl
use strict;
chomp(my $zeile = <STDIN>);
# DAtumsangabe am . trennen
my @teile = split /\./,$zeile;
# Umdrehen
@teile = reverse @teile;
 $zeile = join ":",@teile;
 print "$zeile\n";
