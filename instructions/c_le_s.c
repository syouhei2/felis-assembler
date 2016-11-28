#include "commands.h"



void c_le_s()
{
  char *fs,*ft,*fd,*imm;
  fd = strtok(NULL," ,");
  fs = strtok(NULL," ,\n");

  write_bit(C_LE_S,6);
  typeR(regn(fs),0,regn(fd),0);

}
