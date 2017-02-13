#include "commands.h"



void mfc1()
{
  char *fs,*rt,*imm;
  fs = strtok(NULL," ,");
  isfreg(fs);
  rt = strtok(NULL," ,\n");
  isreg(rt);

  write_bit(MFC1,6);
  typeI(regn(fs),regn(rt),0);

}
