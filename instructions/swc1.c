#include "commands.h"

void swc1()
{
        char *rs,*fd,*imm;

        rs = strtok(NULL," ,");
        fd = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(SWC1,6);
        typeI(regn(rs),regn(fd),atoi(imm));
}
