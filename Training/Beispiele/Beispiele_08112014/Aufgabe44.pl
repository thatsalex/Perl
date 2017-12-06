 #!/usr/bin/perl
use strict;
my @text =('Hallo Fom','diefOm','FOM','MOF','fo') ;
my @result = grep {length($_)>2} @text;
print "@result\n";
@result = grep (/.{3,}/,@text) ;
print "@result\n";
@result = grep {/.{3,}/} @text ;
print "@result\n";
#b)
my @zeilen = grep {/FOM/i} <STDIN>;
print "@zeilen\n";
my $n = @zeilen;   #Anzahl
print "Anzahl Zeilen: ($#zeilen+1)\n";
print "Anzahl Zeilen: $n\n";
# c)
my @liste = ('a','b','c','e','x','y','z');
my %liste = map { ($_=>1)} @liste;
my $name ='s';
if ( exists $liste{$name})
{
  print "gefunden\n";
}
else{
  print "nicht gefunden\n";
}
 
if ((grep {$_ eq $name} @liste) )
{
  print "Gefunden\n";
}
else{
  print "nicht Gefunden\n" ;
}
