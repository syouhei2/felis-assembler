#include "commands.h"

void typeI(int rs,int rt,int imm)
{
  write_bit(rs,5);
  write_bit(rt,5);
  write_bit(imm,16);
  printf("\n");

}
