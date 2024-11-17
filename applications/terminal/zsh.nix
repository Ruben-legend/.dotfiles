{ config, ...}:{
  imports =  [./shellAliases.nix];
  
  programs.zsh = {
    enable = true;
    enableBashCompletion = true;
    ohMyZsh = {
      plugins = ["git" "python" "man" "z"];
      enable = true;
      #theme = "xiong-chiamiov-plus";
      theme = "agnoster";
    };
  };
}
