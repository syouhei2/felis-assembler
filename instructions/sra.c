#include "commands.h"



void sra()
{
  char *rs,*rd,*shift;
  rs = strtok(NULL," ,");
  isreg(rs);
  rd = strtok(NULL," ,");
  isreg(rd);
  shift = strtok(NULL," ,\n");
  isimm(shift);

  write_bit(SRA,6);
  typeR(regn(rs),0,regn(rd),atoi(shift));

}
