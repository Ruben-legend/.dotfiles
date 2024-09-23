{ config, pkgs, inputs, ...}:
{	  
  programs.hyprland.enable = true; # enable Hyprland
  programs.waybar.enable = true; 

  environment.systemPackages = with pkgs; [
     kitty
     eww
     ranger
     polybar
  ];
  fonts.packages = with pkgs; [ 
     nerdfonts
     fira-sans
     font-awesome_6
     roboto
     dejavu_fonts
  ];

}
