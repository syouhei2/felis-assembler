#include "commands.h"



void mfc1()
{
  char *fs,*rd,*imm;
  rd = strtok(NULL," ,");
  fs = strtok(NULL," ,\n");

  write_bit(MTC1,6);
  typeR(regn(fs),0,regn(rd),0);

}
