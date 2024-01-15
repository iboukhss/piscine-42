#include "piscine.h"
#include <stdlib.h>

int	main(int argc, char *argv[])
{
	if (argc == 2)
	{
		ft_is_negative(atoi(argv[1]));
		return (0);
	}
	return (-1);
}
