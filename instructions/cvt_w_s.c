#include "commands.h"



void cvt_w_s()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  isfreg(fs);
  ft = strtok(NULL," ,\n");
  isfreg(ft);

  write_bit(CVT_W_S,6);
  typeI(regn(fs),regn(ft),0);

}
