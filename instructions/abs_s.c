#include "commands.h"



void abs_s()
{
  char *fd,*fs,*imm;
  fs = strtok(NULL," ,");
  fd = strtok(NULL," ,\n");

  write_bit(ABS_S,6);
  typeR(regn(fs),0,regn(fd),0);

}
