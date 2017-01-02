#include "commands.h"

void lw()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rt = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(LW,6);
        typeI(regn(rs),regn(rt),atoi(imm));
}
