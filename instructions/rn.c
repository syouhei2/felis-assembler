#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

uint32_t regn(char* r)
{


    if (strcmp(r, "$ra") == 0) {
        return 31;
    } else {
        return atoi(&r[1]);
    }
}
