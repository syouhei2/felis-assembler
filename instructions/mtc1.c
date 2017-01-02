#include "commands.h"



void mtc1()
{
  char *rs,*ft,*imm;
  rs = strtok(NULL," ,");
  ft = strtok(NULL," ,\n");

  write_bit(MTC1,6);
  typeI(regn(rs),regn(ft),0);

}
