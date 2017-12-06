#!/usr/bin/perl -w
# Formel = 	O =	π × d = 2 × π × r

# Teil a)
$umfang;
$radius;
$pi = 3.14;

$umfang = $radius * 2.0 * $pi;

# Teil b)
#print("Bitte geben Sie den Radius für den Kreis ein: \n");
#$radiusInput = <STDIN>;
#$umfang = $radiusInput * 2.0 * $pi;
#print("Umfang des Kreises ist: ", $umfang , "\n");

# Teil c)
print("Bitte geben Sie den Radius für den Kreis ein: \n");
$radiusInput = <STDIN>;
if($radiusInput < 0)
{
    $radiusInput = 0.0;
    $umfang = $radiusInput * 2.0 * $pi;
    print("Umfang des Kreises (bei r=0) ist: ", $umfang , "\n");
}
else
{   $umfang = $radiusInput * 2.0 * $pi;
    print("Umfang des Kreises ist: ", $umfang , "\n");
}

