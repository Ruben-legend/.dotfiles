{ config, pkgs, ... }:

{
  imports = [
    ../wm/waybar/waybar.nix
  	../wm/hyprland/default.nix
  	../wm/hyprland/hypr-paper.nix
  	../applications/default.nix
  ];
  # home manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ruben-epic";
  home.homeDirectory = "/home/ruben-epic";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
      git
      swaylock-effects
      cmake
      meson
      cpio 
      hyprpaper
      rofi
      ncurses5

      python3Packages.pyserial
      python3.pkgs.pip

      arduino-ide
      vscode

      arduino-cli
      platformio
  ];

  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
    #  platformio-core
    # platformio
    # teensy-loader-cli
  ];
  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ruben-epic/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
  programs.lazygit.enable = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}

