#!/usr/bin/perl
my %kiste = (hans =>"M�ller",helga=> "Schmitt",rosi=>"Maier") ;
print "Dein Name:";
chomp (my $name = <STDIN>);
print "Hallo $name $kiste{$name}\n" ;

