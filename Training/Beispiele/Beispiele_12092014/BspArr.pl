#!/usr/bin/perl
use strict;
my @kiste = ("Susi","Anna",1337,69);
$kiste[15]= "Oli";
foreach(0..$#kiste)
{
    if (defined($kiste[$_]) && $kiste[$_] eq "Oli"){
      print "$_: $kiste[$_]\n";
    }
}
# andere Möglichkeit Array auszugeben
print "@kiste\n";
foreach (@kiste)
{
    if (defined($_)){
      print "$_\n";
    }
}
