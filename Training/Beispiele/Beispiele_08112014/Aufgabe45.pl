#!/usr/bin/perl
use strict;
my @liste =(1,6,3,4,8,16,5);
#a)
my @result = map {$_+1} @liste;
print "@result\n";

my @namen = ('Hans','Elke','Uwe','Thomas');
my @neuNamen = reverse sort map (uc,@namen);   #uc wandelt in Großbuchstaben
print "@neuNamen\n";
