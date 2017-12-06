#!/usr/bin/perl
use strict;
sub Rechne($$$)
{
if (@_ !=3 )   #Anzahl Parameter abfragen
{
    return undef;
}
    if ($_[2] eq "+"){
      return $_[0] + $_[1] ;   
    }
     elsif ($_[2] eq "-"){
      return $_[0] - $_[1] ;
    }
     elsif ($_[2] eq "*"){
      return $_[0] * $_[1] ;
    
    }
      elsif ($_[2] eq "/"){
      return $_[0] / $_[1] ;
    
    }
     return undef;

}
chomp (my $z1 = <STDIN>);
chomp (my $z2 = <STDIN>);
chomp (my $op = <STDIN>);
if ( (my $erg=&Rechne($z1,$z2,$op)) != undef) {
print "Ergebnis: $erg\n" ;
}
else{
print "ungültiger Operator\n";
}
sub Suche ($@)
{
   my ($elem,@Liste)  = @_;
   #my $z;
    print "@Liste\n";
    my $i=0;
   foreach  $i(0..$#Liste)
   {
      if ($Liste[$i] eq $elem){
        print "Gefunden\n";
        return $i ;
        #$z++;
      }
   }
   return undef;
}
my @namen = qw(Peter Hans Uwe);
my $i = &Suche("Peter",@namen);
if ($i eq undef)  {
        print "nicht gefunden";
}
else{
      print "Gefunden bei $i";
}