#include "commands.h"

void bltzal(char *rs,int imm)
{

        write_bit(BLTZAL,6);
        typeI(regn(rs),0,imm);
}
