#!/usr/bin/perl
use strict;
my %word; #leerer Hash
# Begriffe einlesen bis STRG Z eingegeben wird
while ( chomp(my $w = <STDIN>))
{
   $word{$w} +=1;
   #

}
#Ausgabe
foreach my $k ( reverse sort keys(%word))
{
  print "$k : $word{$k}\n";

}
# Ausgabe aller values
foreach my $v (sort {$a <=> $b} values %word)
{
  print "$v\n";
}