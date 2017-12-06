#!/usr/bin/perl
chomp(my $text = <STDIN>);
# 34.1
# \b Wortgrenzen beachten
if ($text =~ /\bMichael\b/)
{
  print "Michael gefunden\n";
}
# 34.2
if ($text =~/^\bMichael\b/)
{
  print "Michael am Anfang gefunden\n";
}
# 34.3
if ($text =~ /\bMichael\b$/)
{
  print "Michael am Ende gefunden\n";
}
# 34.4
if ($text =~/\b[Mm]ichael\b/)
{
  print "Mmichael gefunden\n";
}
# 34.5
if ($text =~/[ \t]/)
{
  print "Leerzeichen oder Tab\n";
}
# 34.6
if ($text =~/[ \t]+$/)
{
  print "mind. ein Leerzeichen oder Tab am Ende\n";
  
}
# 34.7
if ($text =~ /[a-z0-9<>_]/)
{
  print "kleiner Buchst, Zahl,>,<,_\n";
}
# 34.8
if ($text =~/[0-9+-]/)
{
  print "Ziffer oder Vorzeichen\n";
}
# 34.9
if ($text=~/[^a-zA-Z]/)
{
  print "34-9\n";
}
  if ($text!~/[a-zA-Z]/)
{
  print "34-9\n";
}
#34.10
if ($text =~/ab?c/)
{
  print "34-10\n";
}
#34.11
if ($text =~/\b[aeiouAEIOU]da/)
{
  print "34-11\n";
  }
#34.12
 if ($text =~/\b[A-Za-z]da/)
 {
  print "34-12\n";
 }
#34.13
 if ($text =~/\b[\S]da/)
 {
  print "34-13\n";
}