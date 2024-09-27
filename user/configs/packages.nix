{pkgs, ...}:
{

  environment.systemPackages = with pkgs; [
      neovim
      wget
      git
      qt5.qtgraphicaleffects
      qt5.qtbase
      qt5.qtdeclarative

      kitty
      eww
      ranger
      waybar
      sway
      hyprland
      pavucontrol
      home-manager
      
  ];
}
