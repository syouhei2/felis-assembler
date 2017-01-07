SRCS = $(shell find instructions -name "*.c")
OBJS = $(patsubst %.c,%.o,$(SRCS))
NOMAKEDIR = $()
INCLUDE = $(addprefix -I./,$(filter-out $NOMAKEDIR), $(shell find * -type d))

all : linker asm

#.PHONY: clean

linker : linker.c
	gcc -Wall -o linker linker.c

asm : $(SRCS) asm.c
	gcc -Wall -Wextra -Wno-unused-variable -o asm $(SRCS) asm.c


clean:
	rm asm linker
