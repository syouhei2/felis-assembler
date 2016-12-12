#include "commands.h"

void addi(char *rs,char *rd,int imm)
{

        write_bit(ADDI,6);
        typeI(regn(rs),regn(rd),imm);
}
