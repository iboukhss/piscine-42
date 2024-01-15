#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

my $exe = "../../bin/c00/ex04/ft_is_negative";

is `$exe 123`, "P", "Small positive number";
is `$exe -123`, "N", "Small negative number";
is `$exe 0`, "P", "Zero";

done_testing;
