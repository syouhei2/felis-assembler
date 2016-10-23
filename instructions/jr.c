#include "commands.h"



void jr()
{
  char *rs,*rt,*rd,*imm;
  rs = strtok(NULL," ,\n");

  write_bit(JR,6);
  typeR(regn(rs),0,0,0);

}
