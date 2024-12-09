{...}:{

  networking.hostName = "ruben-epic"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;
  networking.firewall.allowedUDPPorts = [ 27015 ];
}
