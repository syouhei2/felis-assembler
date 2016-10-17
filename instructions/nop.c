#include <stdio.h>
#include <string.h>
#include "commands.h"



void nop()
{
        write_bit(NOP,32);
        printf("\n");
}
