#include "commands.h"

void blez()
{
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ,");
        imm = strtok(NULL," \n");

        write_bit(BLEZ,6);
        typeI(regn(rs),regn(rs),atoi(&imm[1]));
}
