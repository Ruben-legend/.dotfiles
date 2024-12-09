import argparse
import os.path as path
from os import system


parser = argparse.ArgumentParser()
parser.add_argument("--command", help="Indica el tipo de compilacion")
args = parser.parse_args()

if args.command:
    cmd = args.command
    home = path.expanduser("~")

    if path.exists(home + "/.tmux/plugins/tpm"):
        print("Ya esta instalado el plugin")
    else:
        print("Se esta instalando el plugin")
        system(f"{cmd} clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm")
        print("Ya se instalo en plugin")
