/*複数の.sファイルを統合して１つの.sファイルにします(標準出力するだけなのでリダイレクトで)
　　_min_camlで始まるラベル以外は(ファイル名)をつけた形に変換します*/


#include <stdio.h>
#include <string.h>


int lsearch(char *,char [10000][255],int);

int main(int argc,char **argv)
{
  int i,p;
  char *fn;
  FILE *fd;
  char buf[255];
  char *tok;
  /*localなラベル*/
  char llabel_set[10000][255];
  char *mincaml = "_min_caml";

  for (i=1;i<argc;i++) {
    memset(llabel_set,'\0',2550000);
    p = 0;

    fn = argv[i];
    fd = fopen(argv[i], "rt");
    if (fd == NULL) {
        perror(argv[2]);
        return 1;
    }

    while (fgets(buf, 255, fd) != NULL) {
        if (strlen(buf) > 1) {
          tok = strtok(buf," ,\t\n"); 
          if (tok[strlen(tok) - 1] == ':') {
            /*_min_camlで始まるラベルはいじらない*/
            if ( tok != strstr(tok,mincaml) ){
              strcpy(llabel_set[p], tok);
              p++;
            }  
          } 
        }
    }
    
    rewind(fd);

    while (fgets(buf, 255, fd) != NULL) {

      if  (strlen(buf) > 1) {
        tok = strtok(buf," ,\t\n");
        if (tok[strlen(tok) - 1] != ':') printf("  ");
        if ( lsearch(tok,llabel_set,p) == 1) printf("(%s)",fn);
        printf("%s ",tok); 

        while ( (tok = strtok(NULL," ,\t\n")) != NULL){
          if ( lsearch(tok,llabel_set,p) == 1) printf("(%s)",fn);
          printf("%s ",tok);
        }
        printf("\n");

      }
    }

    printf("\n");
  }
return 0;
}


/*トークン最後の:や\nを無視してサーチする*/
int lsearch(char *s,char l[10000][255],int p)
{

  int i = 0;
  while(i < p){
    if(l[i] == strstr(l[i],s) ){ return 1;}
    i++;
  } 

  return -1;
}
    
