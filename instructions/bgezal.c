#include "commands.h"

void bgezal(char *rs,int imm)
{

        write_bit(BGEZAL,6);
        typeI(regn(rs),0,imm);
}
