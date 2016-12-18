#include "commands.h"



void lwo()
{
  char *rs,*rt,*rd,*imm;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,\n");

  write_bit(LWO,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
