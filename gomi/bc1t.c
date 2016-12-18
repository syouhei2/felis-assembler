#include "commands.h"


void bc1t(uint32_t addr)
{
  write_bit(BC1T,6);
  write_bit(addr,26);
  printf("\n");

}
