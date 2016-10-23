#include "commands.h"

void move()
{
        char *rs,*rt,*rd,*imm;

        rd = strtok(NULL," ,");
        rs = strtok(NULL," ,");

        write_bit(ADDI,6);
        typeI(regn(rs),regn(rd),0);
}
