#include "commands.h"

void swc1()
{
        char *fs,*rt,*imm;

        fs = strtok(NULL," ,");
        isfreg(fs);
        rt = strtok(NULL," ,");
        isreg(rt);
        imm = strtok(NULL," ,\n");
        isimm(imm);

        write_bit(SWC1,6);
        typeI(regn(fs),regn(rt),atoi(imm));
}
