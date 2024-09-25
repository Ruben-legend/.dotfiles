{...}:{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;

  security.rtkit.enable = true;

  services.xserver.desktopManager.budgie.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

  services.xserver = {
	  enable = true;
	  displayManager = {
	    lightdm = {
	      #background = wall;
	      enable = true;
	    };
  	};
  };
  
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
