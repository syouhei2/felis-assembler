#include <stdio.h>
#include <string.h>
#include "commands.h"

void addi()
{
        char *rs,*rt,*rd,*imm;

        rs = strtok(NULL," ");
        rd = strtok(NULL," ");
        imm = strtok(NULL," \n");

        write_bit(ADDI,6);
        write_bit(regn(rs),5);
        write_bit(regn(rd),5);
        write_bit(atoi(&imm[1]),16);
        printf("\n");
}
