#include "commands.h"



void nor()
{
  char *rs,*rt,*rd,*imm;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,\n");

  write_bit(NOR,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
