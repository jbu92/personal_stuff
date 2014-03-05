#!/usr/bin/perl
#James Haight
#Collatz Conjecture
#Take any number, if even /2, if odd *3 +1
#should end up at one lulz

use warnings;

print "Enter a number: ";
my $number = <STDIN>;
while($number != 1){
	if($number % 2 == 0){
		$number = $number / 2;
	}
	else{
		$number = $number * 3 + 1;
	}
print "$number\n";
#sleep(0.75);
}
