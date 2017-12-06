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

while (my $zeile = <DATEI>)
{
  if (index ($zeile, "{") >=0 )
  {
    $anzO++
  }
  if (index ($zeile, "}") >=0 )
  {
    $anzC++
  }
  if ($anzC > $anzO)
  {
    close DATEI;
    die "too many }";
  }
}
close DATEI;
if ($anzC != $anzO){
  print "{ and } not equal:  $anzO $anzC\n";
}
else{
  print "$anzO $anzC \n";
}