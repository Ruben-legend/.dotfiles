{ assets, ...}:
let
  wall = "${../../../assets/wallpapers/ttgl/ttgl1.jpg}";
  wall2 = "${../../../assets/wallpapers/ttgl/anti.jpg}";
  wall-13 = "${../../../assets/wallpapers/ttgl/ttgl2.jpg}";
  #wall-1 = "~/.config/hypr/assets/image.jpg";
in
{
  services.hyprpaper = {
   enable = true;

    settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;

        preload = [ "${wall}" "${wall2}" "${wall-13}"];

        wallpaper = [
        ",${wall2}"
      ];
    };
  };
}
