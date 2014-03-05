#!/usr/bin/perl

use warnings;
use strict;
my @primes = (qw/2/);
my $fail = 0;
my $filename = $ARGV[0];
open(FILE, "+<$filename") or die "Could not open $filename. Terminating.\n";
while(<FILE>){
	push(@primes, $_);
}

print "Resuming from $primes[-1]\n";
my $i = $primes[-1];
while(1){
	$fail = 0;
	foreach my $j (@primes){
		if($i % $j == 0){
			$fail = 1;
			last;
		}
	}
	if($fail == 0){
		push(@primes, $i);
		print "$i\n";
		print FILE "$i\n";
	}
	$i++;
}
