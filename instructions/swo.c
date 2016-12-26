#include "commands.h"



void swo()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,");
  rd = strtok(NULL," ,\n");

  write_bit(SWO,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
