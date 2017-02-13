#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "commands.h"


void isfreg(char *s)
{
  int l = strlen(s);
  int i;
  
  if (s[0] != 'f') {
      printf("invalid argument\n%d:%s is not float point register\n",fl,s);
      exit (EXIT_FAILURE);
  }
  for (i=1;i<l;i++){
    if(!isdigit(s[i])) {
      printf("invalid argument\n%d:%s is not float point register\n",fl,s);
      exit (EXIT_FAILURE);
    }
  }

}

