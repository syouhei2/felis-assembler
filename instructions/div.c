#include "commands.h"


void mydiv()
{
    char* rs, *rt, *rd, *imm;
    rs = strtok(NULL, " ,");
    rt = strtok(NULL, " ,");
    rd = strtok(NULL, " ,\n");

    write_bit(DIV, 6);
    typeR(regn(rs), regn(rt), regn(rd), 0);
}
