#include "commands.h"



void add_s()
{
  char *fs,*ft,*fd,*imm;
  fd = strtok(NULL," ,");
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(ADD_S,6);
  typeR(regn(fs),regn(ft),regn(fd),0);

}
