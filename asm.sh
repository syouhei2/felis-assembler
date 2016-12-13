#!/bin/sh

set -e

if [ $# -lt 1 ]; then
    echo "Usage: " $0 " [asm file]"
    exit 1
fi

make
./asm $1 > code.txt
python ascii2bin.py code.txt code.bin
rm code.txt
