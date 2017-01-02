
#include "commands.h"


void lui()
{
  char *rt,*imm;
  rt = strtok(NULL," ");
  imm = strtok(NULL," ,\n");
  
  write_bit(LUI,6);
  typeI(0,regn(rt),atoi(imm));
}
