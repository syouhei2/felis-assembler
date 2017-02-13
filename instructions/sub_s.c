#include "commands.h"



void sub_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  isfreg(fs);
  ft = strtok(NULL," ,");
  isfreg(ft);
  fd = strtok(NULL," ,\n");
  isfreg(fd);

  write_bit(SUB_S,6);
  typeR(regn(fs),regn(ft),regn(fd),0);

}
