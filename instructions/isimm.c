#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "commands.h"


void isimm(char *s)
{
  int l = strlen(s);
  int i;
  if ( (!(isdigit(s[0]))) && (s[0] != '-')) {
      printf("invalid argument\n%d:%s is not immidiate\n",fl,s);
      exit (EXIT_FAILURE);
  }
  for (i=1;i<l;i++){
    if(!isdigit(s[i])) {
      printf("invalid argument\n%d:%s is not immidiate\n",fl,s);
      exit (EXIT_FAILURE);
    }
  }
}

