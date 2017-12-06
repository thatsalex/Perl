#!/usr/bin/perl
use strict;
print "Name 1:";
chomp(my $name1 =<STDIN>);
print "Name 2:";
chomp (my $name2 = <STDIN>);
($name1,$name2) = ($name2,$name1) ;
print "$name1 $name2"; 
