{laptop, pkgs, ...}:{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;

  security.rtkit.enable = true;

  services = {
      openssh.enable = true;
      printing.enable = true;

      displayManager.sddm = {
        enable = true;
        theme = "${import ./sddm-theme.nix {inherit pkgs;}}";
      }; 

      xserver = {
        enable = true;
        xkb = {
          layout = "us";
          variant = "";
        };
      }; 

      pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
      };
      
      picom = {
        enable = true;
        fade = true;
        inactiveOpacity = 0.9;
        shadow = true;
        fadeDelta = 4;
      };
    };
}
