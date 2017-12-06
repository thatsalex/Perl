#!/usr/bin/perl
open FILE, "<umsaetze.txt" ||die "cannot open file";
print "Welches Jahr?";
chomp(my $jahr = <STDIN>);
print "Welcher Monat?" ;
chomp(my $monat = <STDIN>);
my $sum =0;
while (my $zeile = <FILE>)
{
# \S : nicht Space-Zeichen
    if ($zeile =~ /(\S+) (\S+) (\S+) (\S+)/)
    {
      print "$1 $2\n";
      if ($1 == $jahr && $2 == $monat)
      {
        my $ums = $4;      
        $ums =~ tr /,/./;
        $sum += $ums;
      
      }
    }
}
close FILE;    
print "Gesamtumsatz: $sum";