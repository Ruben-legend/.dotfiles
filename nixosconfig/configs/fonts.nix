{ pkgs, ... }:{

  fonts.packages = with pkgs; [ 
    nerd-fonts._0xproto
    nerd-fonts.droid-sans-mono
     fira-sans
     font-awesome_6
     roboto
     dejavu_fonts
  ];
}
