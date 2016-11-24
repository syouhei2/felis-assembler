#include "commands.h"

void lwc1()
{
        char *rs,*fd,*imm;

        fd = strtok(NULL," ,");
        rs = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(LWC1,6);
        typeI(regn(rs),regn(fd),atoi(imm));
}
