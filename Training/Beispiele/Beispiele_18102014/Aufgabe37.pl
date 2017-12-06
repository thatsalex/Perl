#!/usr/bin/perl
use strict;
print "Dateiname:";
chomp(my $file = <STDIN>);
if (!open FILE,"$file"){
    die "Cannot open $file";
}
my $summe=0;
my @zahlen;
while (my $zeile = <FILE>)
{
    while ( $zeile =~ /([+-]?\d+)/g)
    {
# () -> nur dann wird gesamte Zahl mit Vorzeichen
# in $1 gespeichert
# g -> gllobales Matchen
      $summe += $1;
      push @zahlen,$1;
      print "$1\n";
    }

}
print "Summe: $summe\n";
print "@zahlen\n";
close (FILE);