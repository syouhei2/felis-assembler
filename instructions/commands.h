#include <stdio.h>
#include <string.h>
#include <stdint.h>

#define NOP  0
#define ADD  1
#define ADDI 2
#define SUB  3
#define LUI  4
#define SLL  5
#define SLLV 6
#define SRA  7
#define SRAV 8
#define SRL  9
#define SRLV 10
#define AND  11
#define ANDI 12
#define OR   13
#define ORI  14
#define XOR  15
#define XORI 16
#define NOR  17
#define DIV  18
#define DIVU 19
#define MULT 20
#define MULTU 21
#define MFHI 22
#define MFLO 23
#define MTHI 24
#define MTLO 26
#define BEQ  26
#define BGEZ 27
#define BGTZ 28
#define BLEZ 29
#define BLTZ 30
#define BGEZAL 31 
#define BLTZAL 32
#define J    33
#define JAL  34
#define JR   35
#define JALR 36
#define LB   37
#define LBU  38
#define LW   39
#define SB   40
#define SW   41
#define ABS_S 42
#define NEG_S 43
#define ADD_S 44
#define SUB_S 45
#define MUL_S 46
#define DIV_S 47
#define CVT_S_W 48
#define CVT_W_S 49
#define MOV_S 50
#define C_EQ_S 51
#define C_LE_S 52
#define C_LT_S 53
#define BC1T 54
#define BC1F 55
#define LWC1 56
#define SWC1 57
#define MTC1 58
#define MFC1 59
#define HALT 60
