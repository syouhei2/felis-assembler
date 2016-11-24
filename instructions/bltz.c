#include "commands.h"

void bltz()
{
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(BLTZ,6);
        typeI(regn(rs),regn(rs),atoi(imm)/4);
}
