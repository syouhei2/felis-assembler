#include "commands.h"



void srl()
{
  char *rs,*rd,*shift;
  rs = strtok(NULL," ,");
  isreg(rs);
  rd = strtok(NULL," ,");
  isreg(rd);
  shift = strtok(NULL," ,\n");
  isimm(shift);

  write_bit(SRL,6);
  typeR(regn(rs),0,regn(rd),atoi(shift));

}
