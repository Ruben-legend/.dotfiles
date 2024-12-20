{ config, pkgs, laptop, monitors, ...}:
let
  modules = "${./modules.json}";
in
{
  imports = [
    ./styles/default.nix
  ];
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        margin-bottom = 0;
        margin-right = 0;
        margin-left = 0;
        spacing = 0;
        
        output = [
          (if laptop then "${monitors.laptop}" else "${monitors.pc.m1}")
        ];
        
        include = [
                 "${modules}"
        ];
        
        modules-left = [
          "custom/icon"
          #"custom/appmenu"
         # "custom/settings"
         # "custom/waybarthemes"
         # "custom/wallpaper"
         # "group/quicklinks"
          "hyprland/window"
          #"custom/starter"
        ];

        modules-center = [
          "hyprland/workspaces"
        ];

        modules-right = [
          "custom/updates"
          "pulseaudio"
          #"bluetooth"
          (if laptop then "battery" else "")
          (if laptop then "network" else "")
          #"group/hardware"
          #"custom/cliphist"
          #"custom/hypridle"
          #"custom/hyprshade"
          #"tray"
          #"custom/exit"
         # "custom/ml4w-welcome"
          "clock"
        ];
      };
    };    
  };
}
