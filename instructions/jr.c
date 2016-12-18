#include "commands.h"



void jr(char *rs)
{

  write_bit(JR,6);
  typeR(regn(rs),0,0,0);

}
