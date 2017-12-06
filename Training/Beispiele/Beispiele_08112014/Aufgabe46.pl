#!/usr/bin/perl
use strict;
my @mixdrink = qw(Kaffee Weinbrand mixbecher);
splice (@mixdrink,1,1,'Cognac');
print "@mixdrink\n";
print "Weitere Zutaten:";
my @neuZutaten;
while (chomp (my $z=<STDIN>))
{
  
   push @neuZutaten,$z;
}

splice @mixdrink,0,0,@neuZutaten;
print "@mixdrink"." Prost!\n";
# b)
my @liste1 =qw(Hans Peter Uwe Max Hilde Susi Elke Florian);
my @liste2 = qw (Moritz Hanna Sepp Maria);
splice @liste1,5,3,@liste2;
@liste1 = sort @liste1;
print "@liste1\n";