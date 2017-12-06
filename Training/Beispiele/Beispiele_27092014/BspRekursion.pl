#!/usr/bin/perl
 sub fakul
 {
    my $f=1;
    foreach (1..$_[0])
    {
      $f *= $_;
    }
    return $f;
 
 }
 sub fakulRek
 {
   my $n = $_[0];
   if ($n==0){  #Abbruchbedingung
    return 1;
    }
    return fakulRek($n-1) *$n;
 
 }
 print "Fakultaet von";
 chomp(my $n = <STDIN>);
 print " ist ".fakulRek($n)."\n";
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
sub QuersummeRek
{
    my $z = $_[0];
    if ($z == 0){
        return 0;
    }
    return QuersummeRek($z/10) + $z%10;
}
print "Quersumme: ".&QuersummeRek(1234)."\n";
sub Konvertierung
{
    my $z = $_[0];
    if ($z == 0) {
      return;
    }
    Konvertierung (int $z/2);
    print "".$z%2;
}
Konvertierung(18);
print "\n\n";
sub Konvertierung2
{
  my $z= $_[0];
  my @reste;
  while ($z > 0){
         unshift @reste,$z%2;
         $z = int $z/2;
         }
  foreach (@reste)
  {
      print "$_";
  }
  
}
Konvertierung2(18);