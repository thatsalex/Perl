#!/usr/bin/perl -w
# Getting input from keyboard

print("Insert your name: \n");
chomp( $input = <STDIN> );

print("Your name is: ", $input , "\n");

while($input eq "Alex")
{
    print("Enter your name: \n");
    chomp( $input = <STDIN> );
}
