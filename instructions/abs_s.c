#include "commands.h"



void abs_s()
{
  char *fs,*ft,*imm;
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(ABS_S,6);
  typeI(regn(fs),regn(ft),0);

}
