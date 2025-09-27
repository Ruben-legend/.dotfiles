{ config, pkgs, ... }:

{

  imports = [
    ./modules
  ];

  home.username = "custom";
  home.homeDirectory = "/home/custom";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    fastfetch
    git
    kitty
    vscode
    btop
    brave

    hyprpaper
  ];

  programs.git = {
    enable = true;
    userName = "Ruben-legend";
    userEmail = "rubenalexandercanojimenez@gmail.com";
  };

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };
  
  nixpkgs = {
  	config = {
		allowUnfree = true;
	};
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
