#!/bin/sh


set -e

if [ $# -lt 1 ]; then
    echo "Usage: " $0 " [asm file]"
    exit 1
fi



make
echo "*** assembler running"
./linker $* > new.s
./asm new.s > code.txt
python ascii2bin.py code.txt code.bin
#rm new.s code.txt asm linker
echo "*** done"
