#!/usr/bin/perl
# in Perl grundsätzlich call-by-ref
# call-by-value: übergebenen Wert in lokaler Variable
# abspeichern
#a)
sub Quersumme
{
   my $sum;
   my $z = $_[0];
   while ($z > 0){
       $sum += $z%10;
       $z /= 10;
   }
   return $sum;

}
print "Gib Zahlen ein:";
chomp(my @zahlen = <STDIN>);
foreach (@zahlen)
{
    print "Quersumme von: $_ ist ".&Quersumme($_)."\n";
}
print "@zahlen\n";
print "".&Quersumme(123);