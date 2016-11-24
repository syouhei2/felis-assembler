#include "commands.h"

void bltzal()
{
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(BLTZAL,6);
        typeI(regn(rs),regn(rs),atoi(imm)/4);
}
