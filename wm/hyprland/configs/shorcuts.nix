{ config, wayland, ...}:
let
  terminal = "kitty";
  mainMod = "SUPER";
  browser = "brave";
  waybar_script = "${../scripts/start-waybar-s}";
in
{
 wayland.windowManager.hyprland = {
   settings = {

    bind = [
      "${mainMod}, Return, exec, ${terminal}"
      "${mainMod}, Q, killactive"
      "${mainMod}, escape, exit"
      "${mainMod}, E, exec, thundar"
      "${mainMod}, V, togglefloating"
      "${mainMod}, R, exec, rofi"
      "${mainMod}, P, pseudo"
      "${mainMod}, S, togglesplit"
      "${mainMod}, B, exec, ${browser}"

      "${mainMod}, F1, exec, brave"
      "${mainMod}, F2, exec, ${waybar_script}"
      "${mainMod}, F3, exec, hyprctl reload"
 
      "${mainMod}, H, movefocus, l"
      "${mainMod}, L, movefocus, r"
      "${mainMod}, J, movefocus, u"
      "${mainMod}, K, movefocus, d"

      "${mainMod} SHIFT, H, movewindow, l"
      "${mainMod} SHIFT, J, movewindow, d"
      "${mainMod} SHIFT, K, movewindow, u"
      "${mainMod} SHIFT, L, movewindow, r"

      "${mainMod}, 1, workspace, 1"
      "${mainMod}, 2, workspace, 2"
      "${mainMod}, 3, workspace, 3"
      "${mainMod}, 4, workspace, 4"
      "${mainMod}, 5, workspace, 5"
      "${mainMod}, 6, workspace, 6"
      "${mainMod}, 7, workspace, 7"
      "${mainMod}, 8, workspace, 8"
      "${mainMod}, 9, workspace, 9"
      "${mainMod}, 10, workspace, 10"


      "${mainMod} SHIFT, 1, movetoworkspace, 1"
      "${mainMod} SHIFT, 2, movetoworkspace, 2"
      "${mainMod} SHIFT, 3, movetoworkspace, 3"
      "${mainMod} SHIFT, 4, movetoworkspace, 4"
      "${mainMod} SHIFT, 5, movetoworkspace, 5"
      "${mainMod} SHIFT, 6, movetoworkspace, 6"
      "${mainMod} SHIFT, 7, movetoworkspace, 7"
      "${mainMod} SHIFT, 8, movetoworkspace, 8"
      "${mainMod} SHIFT, 9, movetoworkspace, 9"
      "${mainMod} SHIFT, 10, movetoworkspace, 10"
 
      "${mainMod}, S, togglespecialworkspace, magic"
      "${mainMod} SHIFT, S, movetoworkspace, special:magic"

      "${mainMod}, mouse_down, workspace, e+1"
      "${mainMod}, mouse_up, workspace, e-1"

      
    ];
    

    bindm = [ 
      "${mainMod}, mouse:272, movewindow"
      "${mainMod}, mouse:273, resizewindow"
    ];
  };
  };
}
