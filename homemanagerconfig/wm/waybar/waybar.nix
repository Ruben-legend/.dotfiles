{ config, pkgs, laptop, monitors, ...}:
let
  modules = "${./modules.json}";
in
{
  imports = [
    # ./styles/default.nix
    ./styles/colors.nix
    ./styles/mocha.nix
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
          "hyprland/workspaces#4"
          "custom/separator#dot-line"
          "cpu"
          "custom/separator#dot-line"
          "temperature"
          "custom/separator#dot-line"
          "memory"
          "custom/separator#dot-line"
          "disk"
          "custom/separator#dot-line"
          
          #"custom/appmenu"
         # "custom/settings"
         # "custom/waybarthemes"
         # "custom/wallpaper"
         # "group/quicklinks"
          #"hyprland/window"
          #"custom/starter"
        ];

        modules-center = [
          "idle_inhibitor" 
          "custom/separator#dot-line"
          "clock"
        ];

        modules-right = [
          "network#speed"      
          "custom/separator#dot-line"
          "pulseaudio"
          "custom/separator#dot-line"
          "tray"
          "custom/separator#dot-line"
          "keyboard-state"
          "custom/separator#dot-line"
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
        ];
      };
    };    
  };
}
