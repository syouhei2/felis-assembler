SRCS = $(shell find instructions -name "*.c")
OBJS = $(patsubst %.c,%.o,$(SRCS))
NOMAKEDIR = $()
INCLUDE = $(addprefix -I./,$(filter-out $NOMAKEDIR), $(shell find * -type d))

asm : $(SRCS) asm.c
	gcc -Wall -Wextra -Wconversion -o asm $(SRCS) asm.c

