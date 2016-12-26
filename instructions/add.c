#include "commands.h"



void add()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,");
  rd = strtok(NULL," ,\n");

  write_bit(ADD,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
