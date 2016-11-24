#include <stdio.h>
#include <string.h>
#include <stdint.h>
#define SP 0 //mem addr of the first cmd (/4)

void opener(char [255][255]);
void opener2(int [255]);

main(int argc, char **argv)
{

  /*argment error*/
  if(argc != 2){
    printf("usage: .txt\n");
    return;
  }

  FILE *fd;
  char buf[256];
  char *tok;
  char *rs,*rt,*rd,*imm;
  char *br;

  uint32_t l;

  char label_set[255][255];
  uint32_t laddr[0xFF];
  int p = 0;
  int addr;

  

   /*get input file discripter*/
  fd = fopen(argv[1],"rt");
  if(fd == NULL){
    perror(argv[2]);
    return;
  }


  /*label sakiyomi*/
  while( fgets(buf,255,fd) != NULL ){
   if(strlen(buf) > 1){
     tok = strtok(buf," \n");


      if ( tok[strlen(tok)-1] == ':' ){
        tok[strlen(tok)-1] = '\0';
        strcpy(label_set[p],tok);
        laddr[p] = SP + l;
        p++;
      } else { 
        l += 1;
      }
    }
  }

  //opener(label_set);
  //opener2(laddr);

  close(fd);

  fd = fopen(argv[1],"rt");
  if(fd == NULL){
    perror(argv[2]);
    return;
  }



  while( fgets(buf,255,fd) != NULL ){
    if(strlen(buf) > 1){
    tok = strtok(buf," \n");

     /*label*/
    if ( tok[strlen(tok)-1] == ':' ){ 
    }
     /*cmd*/
     else if( strcmp(tok,"nop") == 0 ) {
        nop();
      }else if( strcmp(tok,"halt") == 0  ){
        halt();        
      }else if( strcmp(tok,"add") == 0 ){//
        add();
      }else if( strcmp(tok,"addi") == 0  ){
        addi();
      }else if( strcmp(tok,"sub") == 0  ){
        sub();
      }else if( strcmp(tok,"lui") == 0  ){
        lui();
      }else if( strcmp(tok,"sll") == 0  ){
        sll();
      }else if( strcmp(tok,"sra") == 0  ){
        sra();
      }else if( strcmp(tok,"srl") == 0  ){
        srl();
      }else if( strcmp(tok,"and") == 0  ){
        and();
      }else if( strcmp(tok,"andi") == 0  ){
        andi();
      }else if( strcmp(tok,"or") == 0  ){
        or();
      }else if( strcmp(tok,"ori") == 0  ){
        ori();
      }else if( strcmp(tok,"xor") == 0  ){
        xor();
      }else if( strcmp(tok,"xori") == 0  ){
        xori();
      }else if( strcmp(tok,"nor") == 0  ){
        nor();
      }else if( strcmp(tok,"div") == 0  ){
        div();
      }else if( strcmp(tok,"mult") == 0  ){
        mult();
      }else if( strcmp(tok,"beq") == 0  ){
        beq();        
      }else if( strcmp(tok,"bgez") == 0  ){
        bgez();        
      }else if( strcmp(tok,"bgtz") == 0  ){
        bgtz();
      }else if( strcmp(tok,"blez") == 0  ){
        blez();
      }else if( strcmp(tok,"bltz") == 0  ){
        bltz();
      }else if( strcmp(tok,"bgezal") == 0  ){
        bgezal();
      }else if( strcmp(tok,"bltzal") == 0  ){
        bltzal();
      }else if( strcmp(tok,"j") == 0 ){
        addr = laddr [ mysearch( strtok(NULL," \n"), label_set, p) ];
        j(addr);
      }else if( strcmp(tok,"jal") == 0  ){
        addr = laddr [ mysearch( strtok(NULL," \n"), label_set, p) ];
        jal(addr);
      }else if( strcmp(tok,"jr") == 0  ){
        jr();
      }else if( strcmp(tok,"jalr") == 0  ){
        jalr();        
      }else if( strcmp(tok,"lw") == 0  ){
        lw();        
      }else if( strcmp(tok,"sw") == 0  ){
        sw();        
      }else if( strcmp(tok,"abs.s") == 0  ){
        abs_s();
      }else if( strcmp(tok,"neg.s") == 0  ){
        neg_s();
      }else if( strcmp(tok,"add.s") == 0  ){
        add_s();
      }else if( strcmp(tok,"sub.s") == 0  ){
        sub_s();
      }else if( strcmp(tok,"mul.s") == 0  ){
        //mul.s();
      }else if( strcmp(tok,"div.s") == 0  ){
        //div.s();
      }else if( strcmp(tok,"cvt.s.w") == 0  ){
        //cvt.s.w();
      }else if( strcmp(tok,"cvt.w.s") == 0  ){
        //cvt.w.s();
      }else if( strcmp(tok,"mov.s") == 0  ){
        mov_s();
      }else if( strcmp(tok,"c.eq.s") == 0  ){
        //c.eq.s();
      }else if( strcmp(tok,"c.le.s") == 0  ){
        //c.le.s();
      }else if( strcmp(tok,"c.lt.s") == 0  ){
        //c.lt.s();
      }else if( strcmp(tok,"bc1t") == 0  ){
        //bc1t();
      }else if( strcmp(tok,"bc1f") == 0  ){
        //bc1f();
      }else if( strcmp(tok,"lwc1") == 0  ){
        lwc1();
      }else if( strcmp(tok,"swc1") == 0  ){
        swc1();
      }else if( strcmp(tok,"mtc1") == 0  ){
        //mtc1();
      }else if( strcmp(tok,"mfc1") == 0  ){
        //mfc1();
      }else if( strcmp(tok,"move") == 0  ){
         /*疑似命令*/
        move();        
      }else{
        printf("unknown mnemonic : %s",tok);
        break;
      }}
      
  }

  close(fd);
  return;



}


void opener(char l[255][255]){
  int i;
  for (i=0;i<10;i++){
    printf("%d : %s\n",i,l[i]);
  }
}

void opener2(int l[255]){
  int i;
  for (i=0;i<10;i++){
    printf("%d : %d\n",i,l[i]);
  }
}
