#!/usr/bin/perl
use strict;
print "Zahl1:";
my $z1 = <STDIN>;
print "Zahl2:";
my $z2 = <STDIN>;
print "Operation:";
chomp(my $op = <STDIN>);
my $erg;
if ( $op eq "+"){
    $erg = $z1 + $z2;  
}
elsif ($op eq "-")
{
  $erg = $z1 - $z2;
}
elsif ($op eq "*")
{
  $erg = $z1 * $z2;
}
elsif ($op eq "/")
{
  $erg = $z1 / $z2;
}
else{
  print "falsche Operation\n";
}
print "= $erg";