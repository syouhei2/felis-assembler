#include <stdio.h>
#include <string.h>
#include "commands.h"



void add(){
        char *rs,*rt,*rd,*imm;
        rs = strtok(NULL," ");
        rt = strtok(NULL," ");
        rd = strtok(NULL," \n");

        write_bit(ADD,6);
        write_bit(regn(rs),5);
        write_bit(regn(rt),5);
        write_bit(regn(rd),5);
        write_bit(0,11);
        printf("\n");
}