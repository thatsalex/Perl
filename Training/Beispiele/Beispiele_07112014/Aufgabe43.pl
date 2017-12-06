#!/usr/bin/perl
print "Dateiname:";
chomp (my $filename = <STDIN>);
 ( open FILE,"<$filename")|| die "cannot open file";
 while ( my $zeile = <FILE>)
 {
     my @spalten = split ' ',$zeile;
     print "$spalten[3] $spalten[1] $spalten[2] $spalten[0]\n";
 
 }
 close FILE;