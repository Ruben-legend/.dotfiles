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
  };
}
