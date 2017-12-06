#!/usr/bin/perl
 use strict;
 print "Zahl: ";
 my $zahl = <STDIN>;
 my $aus;
 my $teiler =2;
 my $oben = $zahl;
 while ($zahl >1&& $teiler<=$oben/2)
 {
    while ($zahl%$teiler==0 )
    {
      if (defined ($aus)) {
          #print "*$teiler";
          $aus .= "*$teiler"
      }
      else {
          #print "$teiler";
          $aus = $teiler; 
      }
      $zahl /= $teiler;
    }
    $teiler++;
 }
 if (!defined($aus)){
  print "Primzahl";
}
else{
  print "$aus";
}