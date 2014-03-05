#!/usr/bin/perl
#James Haight
#challenge from http://www.reddit.com/r/dailyprogrammer/comments/1epasu/052013_challenge_126_easy_realworld_merge_sort/

use warnings;
use strict;

my @arr1 = (692, 1, 32);
my @arr2 = (0, 0, 0, 14, 15, 123, 2431);

#copy arr1 into reserved spots of arr2
for (my $i = 0; $i < @arr1; $i++){
	$arr2[$i] = $arr1[$i];
}

#sort arr2
@arr2 = sort {$a <=> $b} @arr2;

#print
print "@arr2\n";
