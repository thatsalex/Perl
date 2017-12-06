#!/usr/bin/perl
use strict;
my %lexikon = (Der=>'the', Das=>'the', Haus=>'house',weiss=>'white');
print "deutscher Begriff:";
while (chomp (my $wort = <STDIN>))
{
  print "englisch: $lexikon{$wort}\n";
}
print "englischer Begriff: ";
while (chomp (my $wort = <STDIN>))
{
  while ( my ($k, $v) = each %lexikon)
  {
    if ($v eq $wort)
    {
        print "deutscher Begriff: $k\n";
    }
  }
}
