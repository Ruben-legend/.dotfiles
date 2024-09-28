{config, monitors, ...}:{

 wayland.windowManager.hyprland = {

   settings = {   
      workspace = [
        "1, monitor:${monitors.pc.m1}"
        "2, monitor:${monitors.pc.m1}"
        "3, monitor:${monitors.pc.m1}"
        "4, monitor:${monitors.pc.m1}"
        "9, monitor:${monitors.pc.m2}"
      ];
    };
  };
}
