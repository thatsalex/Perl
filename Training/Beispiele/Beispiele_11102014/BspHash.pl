#!/usr/bin/perl
use strict;
my %nbuch =(Ida=>"Mueller", Fritz=>"Mueller", Franz=>"Schmidt",
            Oliver=>"Schmidt", Thomas=>"Mueller");
#Ausgabe
print "@{[%nbuch]}\n";
my %nbuch2 = reverse %nbuch;
# reverse dreht Schl�ssel-Werte Paare um
# bei mehrfach vorkommenden Schl�sseln bleibt nur das erste
# Paar erhalten
print "@{[%nbuch2]} ";