#include "commands.h"

void andi()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rd = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(ANDI,6);
        typeI(regn(rs),regn(rd),atoi(imm));
}
