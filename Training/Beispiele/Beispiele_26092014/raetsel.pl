#!/usr/bin/perl
use strict;
my @alt = ("A".."F");
my @neu=();
foreach (@alt)
{
  push @neu,pop @alt;
}
print "@neu\n";