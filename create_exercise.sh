#!/usr/bin/bash

# Usage ./create_exercise.sh c00/ex00 ft_putchar.c

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <module>/<ex_dir> <filename>"
	exit 1
fi

DIRECTORY=$1
FILENAME=$2

echo "Creating directories for $DIRECTORY..."
mkdir -p "./src/$DIRECTORY"
mkdir -p "./tests/$DIRECTORY"
mkdir -p "./bin/$DIRECTORY"

echo "Creating source file $FILENAME..."
touch "./src/$DIRECTORY/$FILENAME"

echo "Creating test files..."

# Create main
cat << EOF > "./tests/$DIRECTORY/$FILENAME"
#include "piscine.h"

int	main(void)
{
	// Your code here
	return (0);
}
EOF

# Create test script
cat << EOF > "./tests/$DIRECTORY/run_test.pl"
#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

my \$exe = "../../bin/$DIRECTORY/${FILENAME%.c}";

done_testing;
EOF

chmod +x "./tests/$DIRECTORY/run_test.pl"

echo "Exercise setup for $DIRECTORY completed."
