use strict;

# Jahre auf Schaltjahr
foreach (1900..2020)
{
  if (&istSchaltjahr($_)==1)
  {
    print "$_ ist Schaltjahr\n";
  }
} 
sub istSchaltjahr
{
   if ($_[0]%4 == 0 && $_[0] %100 !=0 || $_[0]%400 ==0)
   {
      return 1;
   }
   return 0;
}