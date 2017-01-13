/*複数の.sファイルを統合して１つの.sファイルにします(標準出力するだけなのでリダイレクトで)
　　_min_camlで始まるラベル以外は(ファイル名)をつけた形に変換します*/


#include <stdio.h>
#include <string.h>


int lsearch(char *,char [10000][255],int);

int main(int argc,char **argv)
{
  int i = 0,p = 0;
  char *fn;
  fn = (char *)calloc(255,sizeof(char));
  FILE *fd = NULL;
  char buf[255] = {'\0'};
  char *tok;
    tok = (char *)calloc(255,sizeof(char));
  /*localなラベル*/
  char llabel_set[10000][255];

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
            /*_min_caml,min_camlで始まるラベルはいじらない*/
            if ( (tok != strstr(tok,"min_caml")) && (tok != strstr(tok,"_min_caml")) ){
              tok[strlen(tok) - 1] = '\0';
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
        if (tok[strlen(tok) - 1] != ':') {
          printf("  ");
        } else if ( lsearch(tok,llabel_set,p) == 1) {
          printf("(%s)",fn);
        }
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
  char *t;
  t = (char *)calloc(255,sizeof(char));
  while(i < p){
    strcpy(t,s);
    if (t[strlen(t) - 1] == ':') t[strlen(t) - 1] = '\0';
    //printf("t = \n%s\n",t);
    if( strcmp(t,l[i]) == 0 ){ return 1;}
    i++;
  } 

  return -1;
}
    
