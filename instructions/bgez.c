#include "commands.h"

void bgez(char *rs,int imm)
{

        write_bit(BGEZ,6);
        typeI(regn(rs),0,imm);
}
