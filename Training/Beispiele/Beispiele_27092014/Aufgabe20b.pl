#!/usr/bin/perl
use strict;
#b
sub summe
{
   my $s;
   foreach (@_)
   {
      $s += $_;
   }
   return $s;
}
# test
#my @test = (1,2,3,4,5,6,7,8,9,10);
#c
sub summeZahlen ($)
{
  return &summe (1..$_[0]);

}
print "Obergrenze: ";
my $ober = <STDIN>;
print "Summe: ".&summeZahlen($ober)."\n";
