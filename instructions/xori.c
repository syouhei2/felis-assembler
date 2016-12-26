#include "commands.h"

void xori()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rd = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(XORI,6);
        typeI(regn(rs),regn(rd),atoi(imm));
}
