#include "commands.h"



void jalr()
{
  char *rs,*rt,*rd,*imm;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,\n");

  write_bit(JALR,6);
  typeR(regn(rs),0,regn(rd),0);

}
