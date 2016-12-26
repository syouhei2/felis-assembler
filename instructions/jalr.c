#include "commands.h"



void jalr()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,");
  rd = strtok(NULL," ,\n");

  write_bit(JALR,6);
  typeR(regn(rs),0,regn(rd),0);

}
