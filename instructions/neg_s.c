#include "commands.h"



void neg_s()
{
  char *ft,*fs,*imm;
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(NEG_S,6);
  typeI(regn(fs),regn(ft),0);

}
