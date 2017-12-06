#!/usr/bin/perl
 while (1) # Endlosschleife!
{
	chomp (my $eingabe = <STDIN>);
	if ($eingabe eq '')
	{
		last; # „Notausgang“
	}
	print "Sie haben eingegeben: $eingabe\n";
}
print "Die Schleife ist beendet.\n";
