#include "commands.h"

void sw()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        isreg(rs);
        rt = strtok(NULL," ,");
        isreg(rt);
        imm = strtok(NULL," ,\n");
        isimm(imm);

        write_bit(SW,6);
        typeI(regn(rs),regn(rt),atoi(imm));
}
