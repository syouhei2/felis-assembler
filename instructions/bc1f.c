#include "commands.h"


void bc1f(uint32_t addr)
{
  write_bit(BC1F,6);
  write_bit(addr,26);
  printf("\n");

}
