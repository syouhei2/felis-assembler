#include "commands.h"

void swc1()
{
        char *fs,*rt,*imm;

        fs = strtok(NULL," ,");
        rt = strtok(NULL," ,");
        imm = strtok(NULL," ,\n");

        write_bit(SWC1,6);
        typeI(regn(fs),regn(rt),atoi(imm));
}
