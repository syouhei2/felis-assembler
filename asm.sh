#!/bin/sh

set -e

if [ $# -lt 1 ]; then
    echo "Usage: $0 [asm file]"
    exit 1
fi

make
echo "*** assembler running"
./linker $* > linked.s
python3 remove_no_effect.py linked.s
./asm linked_removed.s > code.txt
python ascii2bin.py code.txt code.bin
echo "*** done"
