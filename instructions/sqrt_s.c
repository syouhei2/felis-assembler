#include "commands.h"



void sqrt_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(SQRT_S,6);
  typeI(regn(fs),regn(ft),0);
}
