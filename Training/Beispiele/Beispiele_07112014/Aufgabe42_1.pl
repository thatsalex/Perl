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
    if ($zeile =~ /^$jahr $monat/)
    {
                
        $zeile =~ tr /,/./;
        my @zahlen = split ' ',$zeile;
        $sum += $zahlen[@zahlen-1];      
    }
}
close FILE;    
print "Gesamtumsatz: $sum";