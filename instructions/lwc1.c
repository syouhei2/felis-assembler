#include "commands.h"

void lwc1()
{
        char *rs,*ft,*imm;

        rs = strtok(NULL," ,");
        isreg(rs);
        ft = strtok(NULL," ,");
        isfreg(ft);
        imm = strtok(NULL," ,\n");
        isimm(imm);

        write_bit(LWC1,6);
        typeI(regn(rs),regn(ft),atoi(imm));
}
