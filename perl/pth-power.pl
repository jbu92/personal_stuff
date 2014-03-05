#!/usr/bin/perl
#James Haight
#Challenge:http://www.reddit.com/r/dailyprogrammer/comments/1fcpnx/053013_challenge_126_intermediate_perfect_pth/

use warnings;

sub logbase{
	my $base = shift(@_);
	my $num = shift(@_);
#	print "Base: $base\nNum: $num\n";
	my $result = log($num)/log($base);
	return $result;
}

#logbase(10,1000) = 3
#logbase(X,Y) = Z
#given Y, maximize Z whereby Z is an integer
#maximum Z ~= minimum X

#take input
my $input = <STDIN>;
chomp($input);

my $result;

for(my $i = 2; $i <= $input; $i++){
	$result = logbase($i, $input);
	if($result =~ /\D/){
		
	}
	else{
		last;
	}
}
print "$result\n";