#!/usr/bin/env python3

import argparse
from os import system

parser = argparse.ArgumentParser()
parser.add_argument("--type", help="Indica el tipo de compilacion")
parser.add_argument("--file", help="Indica el tipo de compilacion")
args = parser.parse_args()

type = ""
file = ""

if args.type:
    type = args.type
    if type == "32":
        type = "elf32"
        print("Configurandon el asm con", type, "Bits")

if args.file:
    file = args.file
    command1 = f"nasm -f {type} {file}.asm -o {file}.o"
    command2 = f"ld -m elf_i386 {file}.o -o {file}"
    system(command1)
    system(command2)
