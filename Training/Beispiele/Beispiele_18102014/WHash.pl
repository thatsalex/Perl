#!/usr/bin/perl
use strict;
my %login = (hartmann => "katze",mueller => "hund",
            schmitt => "pferd");
# alle Benutzernamen alphabetisch sortiert ausgeben
foreach my $key ( sort keys %login)
{
    print "$key \n";

}
# Benutzer hinzufügen
print "Benutzername:";
chomp (my $name = <STDIN>);
if (exists($login{$name}))
{
  print "Passwort:";
  chomp(my $pw = <STDIN>);
  $login{$name} = $pw;
}
else{
   $login{$name}="FOM";

}
# Paare Benutzername, Passwort ausgeben
 while (my ($k, $v) = each %login)
 {
    print "$k: $v\n";
 }