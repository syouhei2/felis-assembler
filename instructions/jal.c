#include "commands.h"


void jal(uint32_t addr)
{
  write_bit(JAL,6);
  write_bit(addr,26);
  printf("\n");

}
