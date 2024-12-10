{lib, pkgs, ...}:
let
  script = "${../scripts/install_tmux_plugins.py}";
  tmuxPlugins = pkgs.tmuxPlugins;
in {
  programs.tmux = {
    enable = true; 
    plugins = with tmuxPlugins;[
      sensible
      catppuccin
      vim-tmux-navigator
    ];    
  };

}
