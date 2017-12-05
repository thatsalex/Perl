#!/usr/bin/perl -w

print("what is the weather today: ");
$weather = <STDIN>;

if ($weather <= 60)
{
    print("\n You should wear long pants and a long sleeve shirt today. \n\n");
}
if($weather > 60 && $weather <= 95)
{
    print("\n You should wear short pant and a t-shirt today. \n\n");
}
if($weather > 95)
{
    print("\n It's to hot to leave the house. \n\n");
}