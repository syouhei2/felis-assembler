#include "commands.h"

void laddrfix2(uint32_t[255],int);

void laddrfix(char label_set[255][255],uint32_t laddr[0xFF],FILE *fd)
{


    //FILE* fd;
    char buf[256];
    int p;
    char *rs,*rt,*rd,*imm,*tok;



    //fd = fopen(fn, "rt");
    //if (fd == NULL) {
    //    perror(fn);
    //    return;
   // }

   //printf("nnn");


    while (fgets(buf, 255, fd) != NULL) {
        if (strlen(buf) > 1) {
            tok = strtok(buf, " \t\n");

            /*assembla command*/
            if (tok[0] == '.') {
            }
            /*label*/
            else if (tok[strlen(tok) - 1] == ':') {
            } else {
               if (strcmp(tok, "addi") == 0) {
                rs = strtok(NULL, " ,\t");
                rd = strtok(NULL, " ,\t");
                imm = strtok(NULL, " ,\t\n");
                if (mysearch(imm, label_set, p) != -1) {
                    /*constがラベルのとき*/
                    laddrfix2(laddr,p);
                    p+=1;
                }
             } else if (strcmp(tok, "jal") == 0) {
                imm = strtok(NULL, " \t\n");
                if (mysearch(imm, label_set, p) == -1) {
                 /* jal r1 */
                  //laddrfix2(laddr,p);
                  p+=0;
                } else {
                }
            }
                p += 1;
            }
        }
    }



    //fclose(fd);
}



void laddrfix2(uint32_t laddr[0xFF],int n)
{
  int i;
  for (i=0;i<255;i++){
    if (laddr[i] > n) laddr[i] += 1;
  }
}



