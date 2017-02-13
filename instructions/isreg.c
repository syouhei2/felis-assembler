#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "commands.h"


void isreg(char *s)
{
  int l = strlen(s);
  int i;
  
  if (strcmp(s, "ra") == 0) {
        exit (EXIT_SUCCESS);
    } 
  
  
  if (s[0] != 'r') {
      printf("invalid argument\n%d:%s is not integer register\n",fl,s);
      exit (EXIT_FAILURE);
  }
  for (i=1;i<l;i++){
    if(!isdigit(s[i])) {
      printf("invalid argument\n%d:%s is not integer register\n",fl,s);
      exit (EXIT_FAILURE);
  }
  }

}

