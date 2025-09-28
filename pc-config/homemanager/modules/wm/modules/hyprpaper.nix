{ assets, self, pkgs, ...}:
let
  wall = "${self}/assets/wallpaper.jpg";

in
{
  services.hyprpaper = {
    enable = true;

    #package = pkgs.hyprpaper;
    settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;

        preload = [ "${wall}"];

        wallpaper = [
        ",${wall}"
      ];
    };
  };
}
