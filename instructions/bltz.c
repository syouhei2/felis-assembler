#include "commands.h"

void bltz(char *rs,int imm)
{

        write_bit(BLTZ,6);
        typeI(regn(rs),0,imm);
}
