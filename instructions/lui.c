
#include "commands.h"


void lui()
{
  char *rd,*imm;
  rd = strtok(NULL," ");
  imm = strtok(NULL," ,\n");
  
  write_bit(LUI,6);
  typeI(regn(rd),regn(rd),atoi(imm));
}
