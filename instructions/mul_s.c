#include "commands.h"



void mul_s()
{
  char *fs,*ft,*fd,*imm;
  fd = strtok(NULL," ,");
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(MUL_S,6);
  typeR(regn(fs),regn(ft),regn(fd),0);

}
