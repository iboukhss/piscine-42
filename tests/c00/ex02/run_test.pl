#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 1;

my $exe = "../../bin/c00/ex02/ft_print_reverse_alphabet";

is `$exe`, join('', reverse 'a'..'z'), "Alphabet z-a";

done_testing;
