#include "commands.h"



void sllv()
{
  char *rs,*rt,*rd,*imm;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,\n");

  write_bit(SLLV,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
