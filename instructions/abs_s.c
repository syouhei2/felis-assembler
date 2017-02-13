#include "commands.h"



void abs_s()
{
  char *fs,*ft,*imm;
  fs = strtok(NULL," ,");
  isfreg(fs);
  ft = strtok(NULL," ,\n");
  isfreg(ft);

  write_bit(ABS_S,6);
  typeI(regn(fs),regn(ft),0);

}
