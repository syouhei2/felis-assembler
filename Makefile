SRCS = $(shell find instructions -name "*.c")
OBJS = $(patsubst %.c,%.o,$(SRCS))
NOMAKEDIR = $()
INCLUDE = $(addprefix -I./,$(filter-out $NOMAKEDIR), $(shell find * -type d))

.PHONY: clean

asm : $(SRCS) asm.c
	gcc -Wall -Wextra -Wno-unused-variable -o asm $(SRCS) asm.c

clean:
	rm asm
