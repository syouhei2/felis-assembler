#include "commands.h"

void andi()
{
        char *rs,*rt,*rd,*imm;

        rd = strtok(NULL," ,");
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(ANDI,6);
        typeI(regn(rs),regn(rd),atoi(imm));
}
