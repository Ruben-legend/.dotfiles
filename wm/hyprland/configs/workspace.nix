{config, laptop, monitors, ...}:{

 wayland.windowManager.hyprland = {

   settings = {   
      workspace = [] ++ (if laptop then
        [
          "1, monitor:${monitors.laptop}"
        ] 
      else[
        "1, monitor:${monitors.pc.m1}"
        "2, monitor:${monitors.pc.m1}"
        "3, monitor:${monitors.pc.m1}"
        "4, monitor:${monitors.pc.m1}"
        "9, monitor:${monitors.pc.m2}"
        "9, monitor:${monitors.pc.m2}"
        ]) ;
    };
  };
}
