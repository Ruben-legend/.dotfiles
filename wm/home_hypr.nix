{ config, wayland, ...}:
let
  restart_script = "~/.dotfiles/scripts/restart_services";
  m1 = "DP-2";
  m2 = "HDMI-A-1";
in
{
 imports = [ ./shorcuts.nix ];
 wayland.windowManager.hyprland = {
   enable = true;
   xwayland.enable = true;

   settings = {

    monitor = [
      "${m1}, 1920x1080, 0x0, 1"
      "${m2}, 1280x1024, 1920x0, 1"
    ];	

    env = [
      "XCURSOR_SIZE = 24"
      "HYPRCURSOR_SIZE = 24"
    ];

    general = {
      gaps_in = 5;
      gaps_out = 20;

      border_size = 2;

      "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";

      resize_on_border = false;
      allow_tearing = false;
    
      layout = "dwindle";
    };

    decoration = {
      rounding = 10;

      active_opacity = 1.0;
      inactive_opacity = 1.0;

      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "rgba(1a1a1aee)";

      blur = {
        enabled = true;
        size = 3;
        passes = 1;

        vibrancy = 0.1696;
      };
    };
    
    animations = {
      enabled = true;
      
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    master = {
      new_status = "master";
    };
    
    misc = {
      force_default_wallpaper = -1;
    };

    input = {
      kb_layout = "us";
      kb_variant = "";
      kb_model = "";
      kb_options = "";
      kb_rules = "";

      follow_mouse = 1;

      sensitivity = 0;

      touchpad = {
        natural_scroll = false;
      };
    };

    gestures = {
      workspace_swipe = false;
    };

    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.5;
    };

    
    workspace = [
      "1, monitor:${m1}"
      "2, monitor:${m1}"
      "3, monitor:${m1}"
      "4, monitor:${m1}"
      "5, monitor:${m1}"
      "6, monitor:${m1}"
      "7, monitor:${m1}"
      "8, monitor:${m1}"
      "9, monitor:${m2}"
    ];

    windowrulev2 = "suppressevent maximize, class:.*";

    exec-once = ["${restart_script}" "polybar" "nm-applet"];
  };
  };
}
