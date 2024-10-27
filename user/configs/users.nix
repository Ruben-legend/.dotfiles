{pkgs, config, laptop, ...}:{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.ruben-epic = {
      isNormalUser = true;
      description = "Ruben Alexander";
      extraGroups = [ "networkmanager" "wheel" "dialout"];
      packages = with pkgs; [
      #  thunderbird
        brave
         firefox
      ];
    };
    defaultUserShell = pkgs.zsh;
  };

  environment.sessionVariables.PATH = "$PATH:/home/ruben-epic/.cargo/bin/";
}
