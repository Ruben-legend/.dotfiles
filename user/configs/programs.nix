{pkgs, ...}:{
  
  programs.hyprland.enable = true; # enable Hyprland
  programs.waybar.enable = true; 

  programs.direnv.enable = true;

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stylua
  ];
}