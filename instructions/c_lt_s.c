#include "commands.h"



void c_lt_s()
{
  char *fs,*ft,*fd,*imm;
  fd = strtok(NULL," ,");
  fs = strtok(NULL," ,\n");

  write_bit(C_LT_S,6);
  typeR(regn(fs),0,regn(fd),0);

}
