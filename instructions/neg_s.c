#include "commands.h"



void neg_s()
{
  char *fd,*fs,*imm;
  fd = strtok(NULL," ,");
  fs = strtok(NULL," ,\n");

  write_bit(NEG_S,6);
  typeR(regn(fs),0,regn(fd),0);

}
