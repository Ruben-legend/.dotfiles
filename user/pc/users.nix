{pkgs, laptop, ...}:{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ruben-epic = {
    isNormalUser = true;
    description = "Ruben Alexander";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
       brave
       firefox
       (if laptop then kdePackages.kate else null)
    ];
  };
}
