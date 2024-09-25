{ config, wayland, ...}:
{
 imports = [ 
    ./animations.nix
    ./decoration.nix
    ./workspace.nix
    ./shorcuts.nix 
    ./monitors.nix
    ./general.nix
    ./dwindle.nix
    ./input.nix
    ./env.nix
  ];
 wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {  

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = -1;
      };

      gestures = {
        workspace_swipe = false;
      };

      device = {
        name = "epic-mouse-v1";
        sensitivity = -0.5;
      };

      windowrulev2 = "suppressevent maximize, class:.*";

      exec-once = ["nm-applet"];
    };
  };
}
