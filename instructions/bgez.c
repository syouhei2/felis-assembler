#include "commands.h"

void bgez()
{
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(BGEZ,6);
        typeI(regn(rs),regn(rs),atoi(imm)/4);
}
