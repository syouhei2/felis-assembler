#include "commands.h"

void lbu()
{
        char *rs,*rt,*rd,*imm;

        rd = strtok(NULL," ,");
        rs = strtok(NULL," ,");
        imm = strtok(NULL," \n");

        write_bit(LBU,6);
        typeI(regn(rs),regn(rd),atoi(&imm[1]));
}
