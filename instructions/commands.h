#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

#define NOP 4
#define HALT 5
#define IN 6
#define OUT 7
#define ADD 8
#define ADDI 9
#define SUB 10
#define LUI 11
#define DIV 12
#define MULT 13
#define DIVI 14
#define MULTI 15
#define SLL 16
#define SRA 17
#define SRL 18
#define AND 20
#define ANDI 21
#define OR 22
#define ORI 23
#define XOR 24
#define XORI 25
#define NOR 26
#define LW 28
#define LWO 29 
#define SW 30
#define SWO 31 
#define BEQ 32
#define BGEZ 33
#define BGTZ 34
#define BLEZ 35
#define BLTZ 36
#define BGEZAL 37
#define BLTZAL 38
#define J 39
#define JAL 40
#define JR 41
#define JALR 42
#define LWC1 48
#define LWOC1 49 
#define SWC1 50
#define SWOC1 51 
#define MTC1 52
#define MFC1 53
#define ABS_S 54
#define NEG_S 55
#define ADD_S 56
#define SUB_S 57
#define MUL_S 58
#define DIV_S 59
#define CVT_S_W 60
#define CVT_W_S 61
#define MOV_S 62

void abs_s();
void add();
void add_s();
void addi(char* rs, char* rd, int imm);
void addi2(char* rs, char* rd, unsigned int addr);
void and ();
void andi();
void bc1f(uint32_t addr);
void bc1t(uint32_t addr);
void beq(char* rs, char* rt, int imm);
void bgez(char* rs, int imm);
void bgezal(char* rs, int imm);
void bgtz(char* rs, int imm);
void blez(char* rs, int imm);
void bltz(char* rs, int imm);
void bltzal(char* rs, int imm);
void c_eq_s();
void c_le_s();
void c_lt_s();
void cvt_s_w();
void cvt_w_s();
void mydiv();
void div_s();
void halt();
void in();
void j(uint32_t addr);
void jal(uint32_t addr);
void jalr();
void jr();
void lb();
void lbu();
void lui();
void lw();
void lwc1();
void mfc1();
void mov_s();
void move();
int mysearch(char* s, char l[10000][255], int p);
void mtc1();
void mul_s();
void mult();
void neg_s();
void nop();
void nor();
void or ();
void ori();
void out();
void sb();
void sll();
void sllv();
void sra();
void srav();
void srl();
void srlv();
void sub();
void sub_s();
void sw();
void swc1();
void typeI(int rs, int rt, int imm);
void typeR(int rs, int rt, int rd, int shamt);
void write_bit(int a, int n);
void xor ();
void xori();
uint32_t regn(char* r);
void swo();
void lwo();
void lwoc1();
void swoc1();
void divi();
void multi();
