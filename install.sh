#/bin/bash

echo "setting main configuration"

sudo nixos-rebuild switch --flake ~/.dotfiles#myticalruben

echo "installig and setting up home-manager"

nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install

home-manager switch --flake ~/.dotfiles#myticalruben