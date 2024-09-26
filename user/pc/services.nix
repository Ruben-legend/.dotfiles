{laptop, ...}:{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;

  security.rtkit.enable = true;

  services =if laptop then 
    #laptop config
    {
      openssh.enable = true;

      displayManager.sddm.enable = true;
      desktopManager.plasma6.enable = true;
      printing.enable = true;

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
    }

    else
    # pc config
    {
      openssh.enable = true;
      printing.enable = true;

      xserver = {
	      enable = true;
        desktopManager.budgie.enable = true;
	      displayManager.lightdm.enable = true;
      };

      pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
      };

      xkb = {
        layout = "us";
        variant = "";
      };
    };  
}
