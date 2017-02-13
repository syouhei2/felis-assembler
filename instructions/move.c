#include "commands.h"

void move()
{
        char *rs,*rt,*rd,*imm;

        rd = strtok(NULL," ,\n");
  isreg(rd);
        rs = strtok(NULL," ,\n");
  isreg(rs);

        write_bit(ADDI,6);
        typeI(regn(rs),regn(rd),0);
}
