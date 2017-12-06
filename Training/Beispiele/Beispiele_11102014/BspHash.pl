#!/usr/bin/perl
use strict;
my %nbuch =(Ida=>"Mueller", Fritz=>"Mueller", Franz=>"Schmidt",
            Oliver=>"Schmidt", Thomas=>"Mueller");
#Ausgabe
print "@{[%nbuch]}\n";
my %nbuch2 = reverse %nbuch;
# reverse dreht Schlüssel-Werte Paare um
# bei mehrfach vorkommenden Schlüsseln bleibt nur das erste
# Paar erhalten
print "@{[%nbuch2]} ";