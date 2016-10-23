#include "commands.h"

void sw()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ,");
        rt = strtok(NULL," ,");
        imm = strtok(NULL," \n");

        write_bit(SW,6);
        typeI(regn(rs),regn(rt),atoi(&imm[1]));
}
