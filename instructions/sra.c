#include "commands.h"



void sra()
{
  char *rs,*rd,*shift;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  shift = strtok(NULL," ,\n");

  write_bit(SRA,6);
  typeR(regn(rs),0,regn(rd),atoi(shift));

}
