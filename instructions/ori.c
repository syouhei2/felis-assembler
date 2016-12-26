#include "commands.h"

void ori()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rd = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(OR,6);
        typeI(regn(rs),regn(rd),atoi(imm));
}
