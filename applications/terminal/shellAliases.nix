{...}:
{
  environment.shellAliases = {
    ".."  = "cd .."; 
    dot   = "cd ~/.dotfiles/";
    u     = "sudo nixos-rebuild switch --flake .";
    uh    = "home-manager switch --flake .";

    ga    = "git add ";
    gc    = "git commit -m";
    gs    = "git status ";
  };
}
