{ config, monitors, ...} : {

 wayland.windowManager.hyprland = {
   settings = {
    monitor = [
      "${monitors.pc.m1}, 1920x1080, 0x0, 1"
      "${monitors.pc.m2}, 1280x1024, 1920x0, 1"
    ];	
   };
 };
}
