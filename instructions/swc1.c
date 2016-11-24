#include "commands.h"

void swc1()
{
        char *rs,*fd,*imm;

        fd = strtok(NULL," ,");
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(SWC1,6);
        typeI(regn(rs),regn(fd),atoi(imm));
}
