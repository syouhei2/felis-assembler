#include "commands.h"

void lwc1()
{
        char *rs,*ft,*imm;

        rs = strtok(NULL," ,");
        ft = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(LWC1,6);
        typeI(regn(rs),regn(ft),atoi(imm));
}
