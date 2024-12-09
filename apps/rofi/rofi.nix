{lib, pkgs, ...}:
let 
  get_themes = "${./get_themes}";
in{
  programs.rofi = {
    enable = true;
  };

  home.activation.get_rofi_themes = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ${get_themes} ${pkgs.git}/bin/git clone --depth=1 https://github.com/adi1090x/rofi.git
    '';
}
