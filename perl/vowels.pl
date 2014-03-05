#!/usr/bin/perl
#James Haight

use warnings;
use strict;

my $filename = shift(@ARGV);
open(FILE, $filename) or die "File $filename not found\n";
my @lines = <FILE>;
my @matches;
foreach my $i (@lines) {
	if($i =~ m/[^aeiouy]*a[^aeiouy]*e[^aeiouy]*i[^aeiouy]*o[^aeiouy]*u[^aeiouy]*y/){
		push(@matches, $i);
	}
}
print "@matches\n";
