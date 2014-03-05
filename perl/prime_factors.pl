#!/usr/bin/perl
#James Haight
#Takes in a positive integer, prints prime factorization
use warnings;
use strict;

my @primes = qw//;
my $number;
#take input from args or input
if(defined($ARGV[0])){
	$number = $ARGV[0];
}

else{
	print "Input number: ";
	$number = <STDIN>;
	chomp($number);
}

my @solution;
my $fail = 0; #failure condition for list population
my $percentage = .1;
my $realpercent;


for (my $i = 2; $i <= $number/2; $i++){
	$fail = 0; #reset fail bool
	$realpercent = $percentage*$number;
	
	if($i > $realpercent){
		printf("%d percent\n", $percentage*100*2);
		$percentage += .1;
	}
	
	#make sure current item is prime
	foreach my $k (@primes){
		if($i % $k == 0){
			$fail = 1;
			last; #break if it's divisimabubble
		}
	}

	#if prime, push to prime list and test divisibility
	if($fail == 0){
		push(@primes, $i);
		while($number%$i==0){
			$number = $number / $i;
			push(@solution, $i);
		}
	}
	#breaks the loop if we've already got the solution
	if($number == 1){
		last;
	}
}
#throw in the number itself in case it's prime
#push(@primes,$number);
if($number != 1){
	push(@solution, $number);
}

print "@solution ";
print "\n";
