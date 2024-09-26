{laptop, ...}: {
  boot.loader = if laptop then{
    #laptop config
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  }
  else {
    #pc config
    grub.enable = true;
    grub.device = "/dev/sda";
    grub.useOSProber = true;
  };
}
