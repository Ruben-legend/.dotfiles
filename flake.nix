{
	description = "My first flake!";
	
	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";

		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
	};

	outputs = {self, nixpkgs, home-manager,...} @ inputs: 
	let
    laptop = false;
		system = "x86_64-linux";
		lib = nixpkgs.lib;
		pkgs = nixpkgs.legacyPackages.${system};
    monitors = {
      pc = {
        m1 = "DP-2";
        m2 = "HDMI-A-1";
      };

      laptop = "LVDS-1";
    };
    
	in {

		nixosConfigurations = {
			ruben-epic = lib.nixosSystem{
				  inherit system;
          specialArgs = {
            inherit laptop;
          };
			  	modules = [./user/configuration.nix];
			  };
		  };

		homeConfigurations = {
			ruben-epic = home-manager.lib.homeManagerConfiguration{
				inherit pkgs;
        extraSpecialArgs = {
            inherit laptop;
            inherit monitors;
        };
				modules = [./user/home.nix];
			};
		};
    
	};
}
