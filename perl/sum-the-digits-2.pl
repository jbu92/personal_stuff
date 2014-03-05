#!/usr/bin/perl
#James Haight
#Challenge: http://www.reddit.com/r/dailyprogrammer/comments/1fnutb/06413_challenge_128_easy_sumthedigits_part_ii/

use warnings;
use strict;

#take in the number
my $number = <STDIN>;
my $sum = 0;
chomp($number);
while(length($number) > 1){
$number = sum($number);
print "$number\n";
}
sub sum{
	my $input = shift(@_);
	#split input
	my @numbers = split('', $input);

	#sum it
	my $sum = 0;
	for (@numbers){
		$sum += $_;
	}
	
	return $sum;
}


