{ config, ...} : {

 wayland.windowManager.hyprland = {
   settings = {
    monitor = [
      "Virtual-1, 1920x1080, 0x0, 1"
    ];	
   };
 };
}
