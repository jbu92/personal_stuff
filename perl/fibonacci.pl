#!/usr/bin/perl
#James Haight
#Returns Nth digit of the fibonacci sequence
use warnings;
use strict;

sub next_item{
	my $one = 0;
	my $two =0;
	my $three = 0;
	$one = shift(@_);
	$two = shift(@_);
	$three = $one + $two;
#	print "$three\n";
	return $three;
}
my $first=1;
my $second = 1;
my $third = 1;
print "Input number of iterations: ";
my $iterations = <STDIN>;
chomp($iterations);
for( my $i = 2; $i < $iterations; $i++){
	$third = next_item($first,$second);
	$first = $second;
	$second = $third;
}
printf("The %dth item is %.0f \n", $iterations, $third);
