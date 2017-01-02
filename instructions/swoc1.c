#include "commands.h"



void swoc1()
{
  char *fs,*rt,*rd,*imm;
  fs = strtok(NULL," ,");
  rt = strtok(NULL," ,");
  rd = strtok(NULL," ,\n");

  write_bit(SWOC1,6);
  typeR(regn(fs),regn(rt),regn(rd),0);

}
