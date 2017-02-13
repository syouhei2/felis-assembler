#include "commands.h"



void in()
{
  char *rs,*rt,*rd,*imm;
  rd = strtok(NULL," ,\n");
  isreg(rd);

  write_bit(IN,6);
  typeR(0,0,regn(rd),0);

}
