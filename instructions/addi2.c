#include "commands.h"

void addi2(char *rs,char *rd,unsigned int addr)
{

  /*
     addi rd rs labbel

     to

     lui  rd address[31:16]
     addi rd rs address[15:0]
  */ 


  unsigned int t = (addr) >> 16;

  write_bit(LUI,6);
  typeI(0,regn(rd),t);

   
  write_bit(ADDI,6);
  typeI(regn(rs),regn(rd),addr);



}
