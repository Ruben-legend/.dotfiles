import os.path as path
from os import system

home = path.expanduser("~")
neovim_path = home + "/.config/nvim"

if path.exists(neovim_path):
    system(f"rm {neovim_path}")
    print(f"Se ha borrado correctamente {neovim_path}")

system(f"ln -s {home}/.dotfiles/homemanager/programs/neovim {neovim_path}")
print(f"Se ha creado el link simbolico a {neovim_path}")
