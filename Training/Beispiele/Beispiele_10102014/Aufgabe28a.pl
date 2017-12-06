#!/usr/bin/perl
use strict;
print "Filename:";
chomp (my $filename = <STDIN>);
if (!open DATEI,"<$filename")
{
    die "cannot open $filename" ;
}
my $anzO;
my $anzC;

while (my $zeile = <DATEI>) #zeilenweise lesen
{
  my $i=-1;
  while ( ($i=index ($zeile, "{",$i+1)) != -1 )
  {
    print "Index: $i\n";
    $anzO++;
  }
  $i=-1;
  while(($i=index ($zeile, "}",$i+1)) != -1 )
  {
    $anzC++;
  }
  if ($anzC > $anzO)
  {
    close DATEI;
    print  "too many }";
    exit 1; # beendet Programm
  }
}
close DATEI;
if ($anzC != $anzO){
  print "{ and } not equal:  $anzO $anzC\n";
}
else{
  print "$anzO $anzC \n";
}