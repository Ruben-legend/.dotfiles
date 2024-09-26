{pkgs, laptop, ...}:
{

  environment.systemPackages = with pkgs; [
      neovim
      wget
      git

      kitty
      eww
      ranger
      waybar
      sway
      hyprland
      pavucontrol
      
  ];
}
