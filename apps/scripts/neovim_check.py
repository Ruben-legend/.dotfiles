import os.path as path
from os import system

home = path.expanduser("~")

if path.exists(home + "/.config/nvim"):
    print("El directorio ya exixte")
else:
    system(f"mkdir {home}/.config/nvim")

if path.exists(home + "/.config/nvim/lua"):
    print("El capeta ya exixte")
else:
    system(f"ln -s {home}/.dotfile {home}/.config/nvim")
