#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

my $exe = "../../bin/c00/ex01/ft_print_alphabet";

is `$exe`, join('', 'a'..'z'), "Alphabet a-z";

done_testing;
