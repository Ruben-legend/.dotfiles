{ assets, ...}:
let
  wall-1 = "${../../assets/image.jpg}";
  #wall-1 = "~/.config/hypr/assets/image.jpg";
in
{
  services.hyprpaper = {
   enable = true;

    settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;

        preload = [  "~/.dotfiles/assets/image.jpg" "${wall-1}" ];

        wallpaper = [
        ",${wall-1}"
      ];
    };
  };
}
