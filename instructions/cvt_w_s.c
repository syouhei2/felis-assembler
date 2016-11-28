#include "commands.h"



void cvt_w_s()
{
  char *fs,*ft,*fd,*imm;
  fd = strtok(NULL," ,");
  fs = strtok(NULL," ,\n");

  write_bit(CVT_W_S,6);
  typeR(regn(fs),0,regn(fd),0);

}
