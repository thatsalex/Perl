#!/usr/bin/perl
use strict;
my $i;
my $dir = "d:/perl/ws1415";
if (opendir(DIR, "$dir")){
  while (defined (my $inhalt=readdir(DIR)) )
  {
  #. und .. sind spezielle verzeichniseinträge 
  #(aktuelles und übergeordnetes Verzeichnis)
    if ($inhalt ne '.' && $inhalt ne'..')
     {   
        if (-f  "$dir/$inhalt"  ) {
            print "$inhalt\n" ;
        }
        if (-d  "$dir/$inhalt")  {
              print "$inhalt: Verzeichnis\n"  ;
        }
        
      $i++;
      }
  }
   print " Es waren $i Dateien\n";
   closedir (DIR);

}
else{
  die "fehler beim Oeffnen";
}