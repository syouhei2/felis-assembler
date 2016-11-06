
#include "commands.h"



void halt()
{
        write_bit(HALT,6);
        write_bit(0,26);
        printf("\n");
}
