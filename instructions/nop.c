#include <stdio.h>
#include <string.h>
#include "commands.h"



void nop()
{
        write_bit(NOP,6);
        write_bit(0,26);
        printf("\n");
}
