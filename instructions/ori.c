#include "commands.h"

void ori()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rt = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(ORI,6);
        typeI(regn(rs),regn(rt),atoi(imm));
}
