{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
	url = "github:nix-community/home-manager/release-25.05";
    	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {

  	nixosConfigurations.custom = nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
		modules = [
			./pc-config/nixosconfig/configuration.nix
		];
	};

	homeConfigurations.custom = home-manager.lib.homeManagerConfiguration {
		pkgs = nixpkgs.legacyPackages.x86_64-linux;
		modules = [
			./pc-config/homemanager/home.nix
		];
	};
	
  };
}
