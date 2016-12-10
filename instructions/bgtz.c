#include "commands.h"

void bgtz(char *rs,int imm)
{

        write_bit(BGTZ,6);
        typeI(regn(rs),0,imm);
}
