#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

my $exe = "../../bin/c00/ex00/ft_putchar";

is `$exe a`, "a", "Lowercase letter";
is `$exe A`, "A", "Uppercase letter";
is `$exe 0`, "0", "Number";

done_testing;
