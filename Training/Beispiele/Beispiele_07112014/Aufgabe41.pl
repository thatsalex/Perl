#!/usr/bin/perl
while (my $zeile = <STDIN>)
{
   $zeile =~ s/ +/ /g;
   print "$zeile";

}