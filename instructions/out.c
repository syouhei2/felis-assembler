#include "commands.h"



void out()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,\n");
  isreg(rs);

  write_bit(OUT,6);
  typeR(regn(rs),0,0,0);

}
