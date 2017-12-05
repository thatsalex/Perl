#!/usr/bin/perl -w

# Select the file to which you want to add the new texts
$filename = 'text.txt';

# Open the file with the file handle (fh) command and pipe
# the following content to it
open($fh, ">>", $filename); 

# Write the new content via file handle (fh) to the file
print($fh "Michi Dehn \n");
print($fh "Jan Tews \n");

# Close and save the changes to the file
close($fh);
