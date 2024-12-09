{lib, pkgs, ...}:
let
  script = "${../scripts/install_tmux_plugins.py}";
  txt = "Hola a todos";
in {
  programs.tmux = {
    enable = true; 
    plugins = with pkgs.tmuxPlugins;[
      sensible
      catppuccin
      vim-tmux-navigator
    ];
    extraConfig = 
      "
        #List of plugins 
        set -g @plugin 'tmux-plugins/tmp'
        set -g @plugin 'tmux-plugins/tmux-sensible
        
        #Init TMUX plugin manager
        run-shell '~/.tmux/plugins/tpm/tpm'
      ";
    
  };

    home.activation.Install_tmux_plugins = lib.mkAfter
      "
        ${pkgs.python3}/bin/python3 ${script} --command ${pkgs.git}/bin/git
      ";
}
