#!/usr/bin/perl
use strict;
chomp(my @eingabe = <STDIN>);
@eingabe = reverse @eingabe;
print "@eingabe\n";