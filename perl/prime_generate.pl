#!/usr/bin/perl

use warnings;
use strict;
my @primes = (qw/2/);
my $fail = 0;
my $i = 2;
while(1){
	$fail = 0;
	foreach my $j (@primes){
		if($i % $j == 0){
			$fail = 1;
		}
	}
	if($fail == 0){
		push(@primes, $i);
		print "$i\n";
	}
	$i++;
}
