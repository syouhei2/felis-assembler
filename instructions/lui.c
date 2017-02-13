
#include "commands.h"


void lui()
{
  char *rt,*imm;
  rt = strtok(NULL," ");
  isreg(rt);
  imm = strtok(NULL," ,\n");
  isimm(imm);
  
  write_bit(LUI,6);
  typeI(0,regn(rt),atoi(imm));
}
