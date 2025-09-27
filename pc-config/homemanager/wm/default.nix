{config, wayland, ...}:
{
  imports = [
    ./modules
  ];

  wayland.windowManager.hyprland = {
	  enable = true;
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
    };
  };
}