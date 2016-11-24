#include "commands.h"

void bgezal()
{
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(BGEZAL,6);
        typeI(regn(rs),regn(rs),atoi(imm)/4);
}
