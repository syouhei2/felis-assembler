#include "commands.h"



void mov_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  isfreg(fs);
  ft = strtok(NULL," ,\n");
  isfreg(ft);

  write_bit(MOV_S,6);
  typeI(regn(fs),regn(ft),0);

}
