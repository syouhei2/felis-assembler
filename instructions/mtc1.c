#include "commands.h"



void mtc1()
{
  char *rs,*fd,*imm;
  rs = strtok(NULL," ,");
  fd = strtok(NULL," ,\n");

  write_bit(MTC1,6);
  typeR(regn(rs),0,regn(fd),0);

}
