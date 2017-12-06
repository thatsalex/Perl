#!/usr/bin/perl
use strict;
#a)
 sub ggT ($$);  #Prototyp
# Überprüfung des Prototypen nur bei Aufruf der Subroutine ohne &
#my $erg = ggT (12,17);
#print "$erg";
sub ggT ($$)
{
   my ($a,$b)= @_;
   while ($b>0)
   {
     if ($a > $b)
     {
        $a = $a - $b;
     }
     else 
     {
        $b = $b - $a;
     }
     
   }
    return $a; 

}
# b)
sub AddBruch
{
    my ($z1,$n1,$z2,$n2)= @_;
    my @erg;
    $erg[0] = $z1*$n2 + $z2*$n1;
    $erg[1] = $n1*$n2;
    my $teiler = ggT($erg[0],$erg[1]);
    $erg[0]/=$teiler;
    $erg[1]/=$teiler;
    return @erg;
}

my @bruch = AddBruch 1,2,1,4 ;
print "@bruch\n";
