#include "commands.h"

void multi()
{
       char *rs,*rt,*rd,*imm;
       rs = strtok(NULL," ,");
       rt = strtok(NULL," ,");
       imm = strtok(NULL," ,\n");

        write_bit(MULTI,6);
        typeI(regn(rs),regn(rt),atoi(imm));
}
