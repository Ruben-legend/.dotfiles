{pkgs, config, laptop, ...}:{

  programs.zsh.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.ruben-epic = {
      isNormalUser = true;
      description = "Ruben Alexander";
      extraGroups = [ "networkmanager" "wheel" "dialout" "docker" "kvm" "adbusers"];
      packages = with pkgs; [
      #  thunderbird
        brave
        firefox
        discord
      ];
    };
    defaultUserShell = pkgs.zsh;
  };

  environment.sessionVariables = {
    PATH = "/home/ruben-epic/.cargo/bin/:/home/ruben-epic/.local/bin/:$PATH";
  };
}
