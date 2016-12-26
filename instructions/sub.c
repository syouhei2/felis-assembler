#include <stdio.h>
#include <string.h>
#include "commands.h"

void sub()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rt = strtok(NULL," ,");
        rd = strtok(NULL," ,\n");

        write_bit(SUB,6);
        typeR(regn(rs),regn(rt),regn(rd),0);
}
