#include "commands.h"



void jalr(char *rs,char *rt)
{

  write_bit(JALR,6);
  typeI(regn(rs),regn(rt),0);

}
