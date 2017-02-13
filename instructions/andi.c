#include "commands.h"

void andi()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        isreg(rs);
        rd = strtok(NULL," ,");
        isreg(rd);
        imm = strtok(NULL," ,\n");
        isimm(imm);

        write_bit(ANDI,6);
        typeI(regn(rs),regn(rd),atoi(imm));
}
