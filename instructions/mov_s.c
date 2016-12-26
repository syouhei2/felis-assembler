#include "commands.h"



void mov_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  fd = strtok(NULL," ,\n");

  write_bit(MOV_S,6);
  typeR(regn(fs),0,regn(fd),0);

}
