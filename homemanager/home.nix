{ pkgs, lib, assets, ...}:
let
	python = "${pkgs.python3}/bin/python3";
	s = "${assets.scripts}/qtile_check.py";
in
{
	imports = [ ./programs ./qtile];

	home.username = "ruben-epic";

	home.homeDirectory = "/home/ruben-epic";
	
	home.packages = with pkgs; [
    obs-studio
    obs-cmd
    obs-cli
    discord
	  fzf
    rofi
  ];

	home.shellAliases = {
		u = "sudo nixos-rebuild switch --flake ~/.dotfiles";
		uh = "home-manager switch --flake ~/.dotfiles --impure";
	};

	home.activation = {
		qtile_check_file_system = lib.hm.dag.entryAfter ["writeBoundary"] ''
			${python} "${s}"
		'';
	};

  home.sessionVariables = {
    SCREEN="PC"; 
  };

	programs.zsh.enable = true;

  services.picom = {
    enable = true;
  };


	
  nixpkgs.config.allowUnfree = true;

	home.stateVersion = "24.11";
	home.enableNixpkgsReleaseCheck = false;
}
