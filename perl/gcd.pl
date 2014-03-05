#!/usr/bin/perl
#James Haight
#challenge: http://www.reddit.com/r/dailyprogrammer/comments/1hvh6u/070813_challenge_132_easy_greatest_common_divisor/

use warnings;

sub gcd{
	my $a = shift(@_);
	my $b = shift(@_);
	my $gcd = 0;
	if($b > $a) {
		my $c = $b;
		$b = $a;
		$a = $c;
	}
	#print "A: $a\nB: $b\n";
	if($a % $b == 0){
		$gcd = $b;
	}
	else{
		$gcd = gcd($b, $a%$b);
	}
	return $gcd;
}

my $a = 0;
my $b = 0;
print "Enter value A: ";
$a = <STDIN>;
print "Enter value B: ";
$b = <STDIN>;

my $answer = gcd($a,$b);
chomp($a);
chomp($b);
print "gcd($a, $b) = $answer\n";