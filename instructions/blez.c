#include "commands.h"

void blez(char *rs,int imm)
{

        write_bit(BLEZ,6);
        typeI(regn(rs),0,imm);
}
