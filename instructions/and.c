#include "commands.h"



void and()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,");
  rd = strtok(NULL," ,\n");

  write_bit(AND,6);
  typeR(regn(rs),regn(rt),regn(rd),0);

}
