#!/usr/bin/perl -w

# Select the file to which you want to add the new texts
$filename = 'text.txt';

# Open the file with the file handle (fh) command and pipe
# the following content to it
open($fh, "<", $filename); 

# While the open document have new lines to read, read the
# content from it
while ($row = <$fh>)
{

    # Read the content from the line
    chomp($row);
    # Write content to output and add new line after read a line
    print($row, "\n");

}

# Close and save the changes to the file
close($fh);
