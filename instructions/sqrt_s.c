#include "commands.h"



void sqrt_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  isfreg(fs);
  ft = strtok(NULL," ,\n");
  isfreg(ft);

  write_bit(SQRT_S,6);
  typeI(regn(fs),regn(ft),0);
}
