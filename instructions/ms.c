#include <stdio.h>
#include <string.h>

int mysearch(char *s,char l[255][255],int p)
{

  int i = 0;
  while(i < p){
    if(strcmp(l[i],s) == 0){ return i;}
    i++;
  } 

  return -1;
}
