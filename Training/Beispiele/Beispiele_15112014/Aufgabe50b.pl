use strict;
sub swap
{
   ($_[0],$_[1]) = ($_[1],$_[0]);
}
sub selectionSort
{
  for (my $i=0; $i< $#_; $i++)
  {
     my $mini = $i+1;
     for (my $j=$i+2; $j<=$#_; $j++)
     {
       if ($_[$j] < $_[$mini])
       {
          $mini = $j;
       }
     }
     if ($_[$mini] < $_[$i] )
     {
       swap $_[$mini],$_[$i];
     }
  }

}
my @zahlen = (5,10,1,4,6,20,3);
selectionSort @zahlen;

# Aufruf von Sort
#@zahlen = sort {$a <=> $b} @zahlen;
print "@zahlen\n";
foreach (@zahlen)
{
  print "Element: $_\n";
}
# 50c)
sub shiftArr
{
my @erg;
  my $tmp = shift @_; 
  push @_,$tmp;
  return @_;
}
print "Hallo\n";
@zahlen = shiftArr @zahlen;
print "@zahlen\n";