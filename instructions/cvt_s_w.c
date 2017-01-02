#include "commands.h"



void cvt_s_w()
{
  char *fs,*ft,*fd,*imm;
  fs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(CVT_S_W,6);
  typeI(regn(fs),regn(ft),0);

}
