#!/usr/bin/perl
# $Liste[0]  : einzelnes Element (Skalar)
# @Liste[0] : einelementige Liste (Liste)
my @Liste =(1.5, 1.7, 2.3, 4.3, 1.0, 2.0) ;
@Liste[6..8] = @Liste[1,1,1];
print "@Liste\n";
@Liste = qw (Mathe Programmierung VWL BWL English);
my @list1 = @Liste[0,1];
my @list2 = @Liste[2..4];
print "@list1\n";
print "@list2\n";