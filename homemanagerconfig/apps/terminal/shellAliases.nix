{...}:
let
  t = "${../../scripts/templates}";
in 
{
  programs.zsh.shellAliases = {
    ".."  = "cd .."; 
    dot   = "cd ~/.dotfiles/";
    u     = "sudo nixos-rebuild switch --flake .";
    uh    = "home-manager switch --flake .";
    uf    = "sudo nix flake update";

    ga    = "git add ";
    gc    = "git commit -m";
    gs    = "git status ";
    apps  = "rofi -show drun";
    mysql-container = "sudo nixos-container root-login mysql-container";

    template = "${t}";
  };
}
