{config, ...}: {

 wayland.windowManager.hyprland = {
    settings = {

      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 2;

        "col.active_border" = "0xFFFFD700 0xffffd700 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        resize_on_border = false;
        allow_tearing = false;

        layout = "dwindle";
      };
    };
  };
}