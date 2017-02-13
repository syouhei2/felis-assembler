#include "commands.h"



void sll()
{
  char *rs,*rd,*shift;
  rs = strtok(NULL," ,");
  isreg(rs);
  rd = strtok(NULL," ,");
  isreg(rd);
  shift = strtok(NULL," ,\n");
  isimm(shift);

  write_bit(SLL,6);
  typeR(regn(rs),0,regn(rd),atoi(shift));

}
