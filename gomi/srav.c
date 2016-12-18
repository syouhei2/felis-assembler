#include "commands.h"



void srav()
{
  char *rs,*rt,*rd,*imm;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,\n");

  write_bit(SRAV,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
