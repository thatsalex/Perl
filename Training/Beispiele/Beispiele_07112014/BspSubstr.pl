#!/usr/bin/perl
use strict;
my $text = <STDIN>;
my $teil =   substr($text,2,2,'#####');  
print "$teil  $text\n";  
$_ = "chinesisches Roulette rigoros.";
tr/Rr/Ll/; # Ersetze alle R und r durch L bzw. l
print "$_\n";
