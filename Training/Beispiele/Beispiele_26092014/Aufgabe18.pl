#!/usr/bin/perl
 use strict;
 my @Benutzer = ("Hans","Uwe","Hilde");
 my @Passw = ("Katze","Hund","Pferd");
 for (my $i=0; $i<=$#Benutzer;$i++)
 {
  print "$Benutzer[$i]:$Passw[$i]\n";
  
}
 for (my $i=$#Benutzer; $i>=0;$i--)
 {
  print "$Benutzer[$i]:$Passw[$i]\n";
  
}
foreach (0..$#Benutzer)
{
   print "$Benutzer[$_]: $Passw[$_]\n";
}
# Benutzername einlesen
print "Benutzer:";
chomp(my $name = <stdin>);
foreach (0..$#Benutzer)
{
  if ($Benutzer[$_] eq $name)
  { 
    print "Passwort:";
    chomp (my $pass = <stdin>);
    if ($Passw[$_] eq $pass)
    {
      print "Willkommen\n";
    }
    else{
        print "Falsches Passwort\n";
    }
  }
}
@Benutzer = reverse @Benutzer;
print "@Benutzer\n";