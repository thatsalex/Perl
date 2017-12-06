#!/usr/bin/perl
# Kommentar
print  "Hallo\nHallo";
print "Ende";
print 'Hallo\n'; # keine Interpretation
$zahl = 111_222;
print "Zahl = $zahl\n";
print 'Zahl = $zahl';
print "\nZahl: ".$zahl;
$zahl = "Zahl";
print "\nZahl= $zahl";
print "Gib eine Zahl ein:";
$eingabe = <STDIN>;
print "Eingabe: $eingabe\n" ;

