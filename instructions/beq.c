#include "commands.h"

void beq(char *rs,char *rt,int imm)
{

        write_bit(BEQ,6);
        typeI(regn(rs),regn(rt),imm);
}
