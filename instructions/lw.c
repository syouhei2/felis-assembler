#include "commands.h"

void lw()
{
        char *rs,*rt,*rd,*imm;

        rd = strtok(NULL," ,");
        rs = strtok(NULL," ,");
        imm = strtok(NULL," \n");

        write_bit(LW,6);
        typeI(regn(rs),regn(rd),atoi(&imm[1]));
}
