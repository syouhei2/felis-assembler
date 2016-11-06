#include "commands.h"

void lb()
{
        char *rs,*rt,*rd,*imm;

        rd = strtok(NULL," ,");
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(LB,6);
        typeI(regn(rs),regn(rd),atoi(imm));
}
