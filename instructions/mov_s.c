#include "commands.h"



void mov_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(MOV_S,6);
  typeI(regn(fs),regn(ft),0);

}
