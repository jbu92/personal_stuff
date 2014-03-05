#!/usr/bin/perl
#James Haight
# http://www.reddit.com/r/dailyprogrammer/comments/1givnn/061713_challenge_130_easy_roll_the_dies/

use warnings;

my $input = $ARGV[0];

my ($rolls, $faces) = split('d', $input);

my @results;

#srand();

for(my $i = 0; $i < $rolls; $i++){
	push(@results, int(rand($faces))+1);
}

print "@results\n";
