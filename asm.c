#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include "instructions/commands.h"

#define TEXTSEC 0      //start addr of the text section (/4)
#define DATASEC 10000  //start addr of the data section (/4)

void opener(char[10000][255]);
void opener2(int[10000]);
void laddrfix(char[10000][255],int[10000],FILE *);

/*　コメントについて
　　　　#で始まる行と、命令の引数より後に書かれた文字列は無視されます

　　　　例
　　　　　　　　　　#comment
          main:
             add r1 r2 r3 #comment
             add r1 r2 r3 comment
          #comment
          #comment
*/


int main(int argc, char** argv)
{
    FILE* fd = NULL;
    char *fn;
    char buf[256];
    char* tok;
    char* rs, *rt, *rd, *imm;
    fn = (char *)calloc(255,sizeof(char));
    rs = (char *)calloc(255,sizeof(char));
    rt = (char *)calloc(255,sizeof(char));
    rd = (char *)calloc(255,sizeof(char));
    imm = (char *)calloc(255,sizeof(char));
    tok = (char *)calloc(255,sizeof(char));
    char* ra = "r31";

    uint32_t dl = 0, tl = 1, cl = 1 , fl = 1;

    char label_set[10000][255];
    int laddr[10000];
    memset(label_set,'\0',2550000);
    memset(laddr,0,10000);


    int p = 0;
    int dsec = 0;
    int addr = 0;

    int opt_f = 0,opt_l = 0;
/*
    union {
        float f;
        int i;
    } u;
*/
    /*argment error*/
    if (argc < 2) {
        printf("usage: ./asm -l -f *.s\n");
        return 1;
    }

   int i;
   for(i = 0; i < argc; ++i){
        if(*argv[i] == '-')
        switch(*(argv[i] + 1)){
            case 'f':
                opt_f = 1;
                break;
            case 'l':
                opt_l = 1;
                break;
            default:
                puts("OPTION ERROR");
        } else fn = argv[i];
    }


    /*get input file discripter*/
    fd = fopen(fn, "rt");
    if (fd == NULL) {
        perror(argv[2]);
        return 1;
    }


    while (fgets(buf, 255, fd) != NULL) {
        if (strlen(buf) > 1) {
            tok = strtok(buf, " \t\n");

            /*assembla command*/
            if (tok[0] == '.') {
                if (strcmp(tok, ".data") == 0)                         
                    dsec = 1;
                else if (strcmp(tok, ".text") == 0)
                    dsec = 0;
            }
            /*label*/
            else if (tok[strlen(tok) - 1] == ':') {
                tok[strlen(tok) - 1] = '\0';
                strcpy(label_set[p], tok);
                if (dsec == 0)
                    laddr[p] = TEXTSEC + tl;
                else
                    laddr[p] = DATASEC + dl;
                p++;
            } 
            /*comment*/
            else if (tok[0] == '#') {
            }    
            else {
                if (dsec == 0)
                    tl += 1;
                else
                    dl += 1;
            }
        }
    }

    printf("#%s\n",fn);
    rewind(fd);
    laddrfix(label_set,laddr,fd);

    if (opt_l) {
      opener(label_set);
      opener2(laddr);
    }


    /*jump to start addr*/
    if (mysearch("_min_caml_start", label_set, p) == -1) {
      printf("label:_min_caml_start was not found\n");
      return -1;
    }
    addr = laddr[mysearch("_min_caml_start", label_set, p)];
    j(addr);
/*
    fd = fopen(argv[1], "rt");
    if (fd == NULL) {
        perror(argv[2]);
        return 1;
    }

*/
    rewind(fd);
    while (fgets(buf, 255, fd) != NULL) {
        if (opt_f) fprintf(stderr,"#line = %d\n",fl++);
        if (strlen(buf) > 1) {
            tok = strtok(buf, " \t\n");


            /*assembla command*/
            if (tok[0] == '.') {
                //if(strcmp(tok,".data") == 0) dsec = 1;
                //else if( strcmp(tok,".text") == 0) dsec = 0;
                cl -= 1;
            }
            /*comment*/
            else if (tok[0] == '#') {
            }

            /*label*/
            else if (tok[strlen(tok) - 1] == ':') {
                cl -= 1;
            } else if (strcmp(tok, "nop") == 0) {
                nop();
            } else if (strcmp(tok, "halt") == 0) {
                halt();
            } else if (strcmp(tok, "in") == 0) {
                in();
            } else if (strcmp(tok, "out") == 0) {
                out();
            } else if (strcmp(tok, "add") == 0) {  //
                add();
            } else if (strcmp(tok, "addi") == 0) {
                rs = strtok(NULL, " ,\t");
                rd = strtok(NULL, " ,\t");
                imm = strtok(NULL, " ,\t\n");
                if (mysearch(imm, label_set, p) == -1) {
                    addi(rs, rd, atoi(imm));
                } else { /*constがラベルのとき*/
                    cl+=1;
                    addr = laddr[mysearch(imm, label_set, p)];
                    addi2(rs, rd, addr);
                }
            } else if (strcmp(tok, "sub") == 0) {
                sub();
            } else if (strcmp(tok, "lui") == 0) {
                lui();
            } else if (strcmp(tok, "sll") == 0) {
                sll();
            } else if (strcmp(tok, "sra") == 0) {
                sra();
            } else if (strcmp(tok, "srl") == 0) {
                srl();
            } else if (strcmp(tok, "and") == 0) {
                and();
            } else if (strcmp(tok, "andi") == 0) {
                andi();
            } else if (strcmp(tok, "or") == 0) {
                or ();
            } else if (strcmp(tok, "ori") == 0) {
                ori();
            } else if (strcmp(tok, "xor") == 0) {
                xor();
            } else if (strcmp(tok, "xori") == 0) {
                xori();
            } else if (strcmp(tok, "nor") == 0) {
                nor();
            } else if (strcmp(tok, "div") == 0) {
                mydiv();
            } else if (strcmp(tok, "divi") == 0) {
                divi();
            } else if (strcmp(tok, "mult") == 0) {
                mult();
            } else if (strcmp(tok, "multi") == 0) {
                multi();
            } else if (strcmp(tok, "beq") == 0) {
                rs = strtok(NULL, " ,\t\n");
                rt = strtok(NULL, " ,\t\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                beq(rs, rt, addr - cl);
            } else if (strcmp(tok, "bgez") == 0) {
                rs = strtok(NULL, " ,\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                bgez(rs, addr - cl);
            } else if (strcmp(tok, "bgtz") == 0) {
                rs = strtok(NULL, " ,\t\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                bgtz(rs, addr - cl);
            } else if (strcmp(tok, "blez") == 0) {
                rs = strtok(NULL, " ,\t\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                blez(rs, addr - cl);
            } else if (strcmp(tok, "bltz") == 0) {
                rs = strtok(NULL, " ,\t\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                bltz(rs, addr - cl);
            } else if (strcmp(tok, "bgezal") == 0) {
                rs = strtok(NULL, " ,\t\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                bgezal(rs, addr - cl);
            } else if (strcmp(tok, "bltzal") == 0) {
                rs = strtok(NULL, " ,\t\n");
                addr = laddr[mysearch(strtok(NULL, " ,\t\n"), label_set, p)];
                bltzal(rs, addr - cl);
            } else if (strcmp(tok, "j") == 0) {
               imm = strtok(NULL, " \t\n");
               if (mysearch(imm, label_set, p) == -1) {
                 /* j r1 */
                 jr(imm);
               } else {
                 addr = laddr[mysearch(imm, label_set, p)];
                 j(addr); 
               }
            } else if (strcmp(tok, "jal") == 0) {
                imm = strtok(NULL, " \t\n");
                if (mysearch(imm, label_set, p) == -1) {
                  jalr(imm,ra);
                } else {
                  addr = laddr[mysearch(imm, label_set, p)];
                  jal(addr); 
                }
            } else if (strcmp(tok, "jr") == 0) {
                rs = strtok(NULL, " \t\n");
                jr(rs);
            } else if (strcmp(tok, "jalr") == 0) {
                rs = strtok(NULL, " \t\n");
                rt = strtok(NULL, " \t\n");
                jalr(rs,rt);
            } else if (strcmp(tok, "lw") == 0) {
                lw();
            } else if (strcmp(tok, "lwo") == 0) {
                lwo();
            } else if (strcmp(tok, "sw") == 0) {
                sw();
            } else if (strcmp(tok, "swo") == 0) {
                swo();
            } else if (strcmp(tok, "abs.s") == 0) {
                abs_s();
            } else if (strcmp(tok, "neg.s") == 0) {
                neg_s();
            } else if (strcmp(tok, "add.s") == 0) {
                add_s();
            } else if (strcmp(tok, "sub.s") == 0) {
                sub_s();
            } else if (strcmp(tok, "mul.s") == 0) {
                mul_s();
            } else if (strcmp(tok, "div.s") == 0) {
                div_s();
            } else if (strcmp(tok, "cvt.s.w") == 0) {
                cvt_s_w();
            } else if (strcmp(tok, "cvt.w.s") == 0) {
                cvt_w_s();
            } else if (strcmp(tok, "mov.s") == 0) {
                mov_s();
            } else if (strcmp(tok, "lwc1") == 0) {
                lwc1();
            } else if (strcmp(tok, "lwoc1") == 0) {
                lwoc1();
            } else if (strcmp(tok, "swc1") == 0) {
                swc1();
            } else if (strcmp(tok, "swoc1") == 0) {
                swoc1();
            } else if (strcmp(tok, "mtc1") == 0) {
                mtc1();
            } else if (strcmp(tok, "mfc1") == 0) {
                mfc1();
            } else if (strcmp(tok, "mov") == 0) {
                /*疑似命令*/
                move();
            } else {
                printf("unknown mnemonic\n : %s", tok);
                break;
            }

            cl += 1;
        }
    }

    fclose(fd);

    write_bit(0xFFFFFFFF, 32);
    printf("\n");
/*
    fd = fopen(argv[1], "rt");
    if (fd == NULL) {
        perror(argv[2]);
        return 1;
    }*/

    /*
  while( fgets(buf,255,fd) != NULL ){
   if(strlen(buf) > 1){
     tok = strtok(buf," \t\n");*/

    /*assembla command*/
    /*  if (tok[0] == '.') {
       //if(strcmp(tok,".data") == 0) dsec = 1;
       //else if( strcmp(tok,".text") == 0) dsec = 0;
     } */
    /*label*/
    //  if ( tok[strlen(tok)-1] == ':' ){
    //}
    /* data section */ /*
     else if ( strcmp(tok,".float") == 0  ){
        tok = strtok(NULL," \t\n");
        u.f = atof( tok );
        write_bit (u.i,32);
        printf("\n");
     }
    }
  }*/
    //fclose(fd);

    return 0;
}


void opener(char l[10000][255])
{
    int i;
    for (i = 0; i < 50; i++) {
        fprintf(stderr,"%d : %s\n", i, l[i]);
    }
}

void opener2(int l[10000])
{
    int i;
    for (i = 0; i < 50; i++) {
        fprintf(stderr,"%d : %d\n", i, l[i]);
    }
}
