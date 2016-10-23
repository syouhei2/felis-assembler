#include "commands.h"

void typeR(int rs,int rt,int rd,int shamt)
{
  write_bit(rs,5);
  write_bit(rt,5);
  write_bit(rd,5);
  write_bit(shamt,5);
  write_bit(0,6);  //fanct
  printf("\n");

}
