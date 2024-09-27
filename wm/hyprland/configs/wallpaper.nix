{...}:
let
  wall-1 = "../../../assets/image.jpg";
in 
{
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = ["${wall-1}"];

      wallpaper = [
        ", ${wall-1}"
      ];
    };
  };
}
