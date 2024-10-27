{ config, ...}:{
  imports =  [./shellAliases.nix];
  
  programs.zsh = {
    enable = true;
    enableBashCompletion = true;
    ohMyZsh = {
      enable = true;
      theme = "xiong-chiamiov-plus";
    };
  };
}
