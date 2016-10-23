#include <stdio.h>
#include <string.h>
#include <stdint.h>

#define NOP  00
#define ADD  01
#define ADDI 02
#define SUB  03
#define LUI  04
#define SLL  05
#define SLLV 06
#define SRA  07
#define SRAV 08
#define SRL  09
#define SRLV 10
#define AND  11
#define ANDI 12
#define OR   13
#define ORI  14
#define XOR  15
#define XORI 16
#define BEQ  26
#define BGEZ 27
#define BGTZ 28
#define BLEZ 29
#define J    33
#define JAL  34
#define JR   35
#define JALR 36
#define LB   37
#define LBU  38
#define LW   39
#define SB   40
#define SW   41
