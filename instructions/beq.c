#include "commands.h"

void beq()
{
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ,");
        rt = strtok(NULL," ,");
        imm = strtok(NULL," \n");

        write_bit(BEQ,6);
        typeI(regn(rs),regn(rt),atoi(&imm[1]));
}
