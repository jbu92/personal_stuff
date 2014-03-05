#!/usr/bin/perl
#James Haight
#McCarthy's 91 function is defined as follows:
#M(n) = n-10 if n > 100 M(n) = M(M(n+11)) if n <= 100
#As such, M(n) = 91 if n <= 100

#use warnings;
#use strict;

my $output;
my $input = shift(@ARGV);
$output = mccarthy($input);
print "$output\n";


sub mccarthy{
        my $n = 0;
        $n = shift(@_);
        my $m = 0;
        if ($n > 100){
                $m = $n-10;
        }
        if ($n <= 100){
                $m = mccarthy(mccarthy($n+11));
        }
        return $m;
}

