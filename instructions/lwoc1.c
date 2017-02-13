#include "commands.h"



void lwoc1()
{
  char *rs,*rt,*fd,*imm;
  rs = strtok(NULL," ,");
  isreg(rs);
  rt = strtok(NULL," ,");
  isreg(rt);
  fd = strtok(NULL," ,\n");
  isfreg(fd);

  write_bit(LWOC1,6);
  typeR(regn(rs),regn(rt),regn(fd),0);

}
