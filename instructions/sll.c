#include "commands.h"



void sll()
{
  char *rs,*rd,*shift;
  rd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  shift = strtok(NULL," ,\n");

  write_bit(SLL,6);
  typeR(regn(rs),0,regn(rd),atoi(shift));

}
