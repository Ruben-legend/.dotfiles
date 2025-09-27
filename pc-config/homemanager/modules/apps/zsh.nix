{ config, ...}:{ 

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    oh-my-zsh = {
      plugins = ["git" "python" "man" "z"];
      enable = true;
      theme = "xiong-chiamiov-plus";
      #theme = "agnoster";
    };
    shellAliases = {
      ".."  = "cd .."; 
      dot   = "cd ~/.dotfiles/";
      u     = "sudo nixos-rebuild switch --flake ~/.dotfiles";
      uh    = "home-manager switch --flake ~/.dotfiles";
      uf    = "sudo nix flake update";

      ga    = "git add ";
      gc    = "git commit -m";
      gs    = "git status ";
  };
  };
}
