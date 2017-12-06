#!/usr/bin/perl
     $_ = <STDIN>;
		if(/(\S+) (\S+) (\S+) (\S+)/){
			print "Ich habe $1 $2 $3 $4 gefunden";
      
       }
# mehr als 4 zeichenfolgen durch Blank getrennt:
# Muster wird erkannt und die ersten 4 Zeichenfolgen
# werden gespeichert
# weniger als 4 Zeichenfolgen: Muster wird nicht erkannt
# Achtung: Zeichenfolgen müssen durch exakt ein Blank
# getrennt -> Muster 
print "Ich habe $1 $2 $3 $4 gefunden";