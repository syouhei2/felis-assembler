#include "commands.h"



void add()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,");
  isreg(rs);
  rt = strtok(NULL," ,");
  isreg(rt);
  rd = strtok(NULL," ,\n");
  isreg(rd);

  write_bit(ADD,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
