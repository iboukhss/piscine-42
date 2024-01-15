ROOT_DIR = ../..

CFLAGS = -Wall -Wextra -Werror -I$(ROOT_DIR)/lib
NFLAGS = -R CheckForbiddenSourceHeader

SRCS = $(wildcard $(ROOT_DIR)/src/c00/ex*/*.c)
MAINS = $(wildcard ex*/*.c)
TESTS = $(wildcard ex*/run_test.pl)

OBJS := $(SRCS) $(MAINS)
OBJS := $(OBJS:%.c=%.o)

EXES := $(basename $(SRCS))
EXES := $(subst src,bin,$(EXES))

all: $(EXES)

$(ROOT_DIR)/bin/c00/%: $(ROOT_DIR)/src/c00/%.o %.o
	@mkdir -p $(dir $@)
	gcc $(CFLAGS) $^ -o $@

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

norm:
	-norminette $(NFLAGS) $(SRCS)

test:
	-prove $(TESTS)

clean:
	rm -rf $(ROOT_DIR)/bin
