#include "commands.h"



void swoc1()
{
  char *rs,*rt,*fd,*imm;
  fd = strtok(NULL," ,");
  rs = strtok(NULL," ,");
  rt = strtok(NULL," ,\n");

  write_bit(SWOC1,6);
  typeR(regn(rs),regn(rt),regn(fd),0);

}
