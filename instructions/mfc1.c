#include "commands.h"



void mfc1()
{
  char *fs,*rt,*imm;
  fs = strtok(NULL," ,");
  rt = strtok(NULL," ,\n");

  write_bit(MTC1,6);
  typeI(regn(fs),regn(rt),0);

}
