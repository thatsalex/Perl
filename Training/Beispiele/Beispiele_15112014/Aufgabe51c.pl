#!/usr/bin/perl
use strict;
my @noten;
while (chomp(my $inp= <STDIN>))
{
    push @noten,$inp;
}

my %noten = ('1'=>0,'2'=>0,'3'=>0,'4'=>0,'5'=>0,'6'=>0);
foreach (@noten)
{

  if ($_ >=1.0 && $_<=1.5)
  {
     $noten{'1'}++;
  }
  elsif ($_ >1.5 && $_<=2.5)
  {
     $noten{'2'}++;
  }
  elsif ($_ >2.5 && $_<=3.5)
  {
     $noten{'3'}++;
  }
  elsif ($_ >3.5 && $_<=4.5)
  {
     $noten{'4'}++;
  }
  elsif ($_ >4.5 && $_<=5.5)
  {
     $noten{'5'}++;
  }
  else{
     $noten{'6'}++;
  }
}
# while (my ($note,$anz) = each %noten)
# {
#     print "$note: "."*"x$anz."\n";
# }
foreach my $key (sort keys %noten )
{
    print "$key: "."*"x$noten{$key}."\n";
}