#include "commands.h"



void srl()
{
  char *rs,*rd,*shift;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  shift = strtok(NULL," ,\n");

  write_bit(SRL,6);
  typeR(regn(rs),0,regn(rd),atoi(shift));

}
