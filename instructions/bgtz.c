#include "commands.h"

void bgtz()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(BGTZ,6);
        typeI(regn(rs),0,atoi(imm)/4);
}
