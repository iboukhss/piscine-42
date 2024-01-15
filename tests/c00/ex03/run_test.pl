#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

my $exe = "../../bin/c00/ex03/ft_print_numbers";

is `$exe`, join('', '0'..'9'), "Digits 0-9" ;

done_testing;
