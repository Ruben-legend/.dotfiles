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

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
	let 
		userName = "myticalruben";
		system = "x86_64-linux";
	in{
  		nixosConfigurations."${userName}" = nixpkgs.lib.nixosSystem {
			inherit system;

			specialArgs = {inherit self userName;};
			modules = [
				./pc-config/nixosconfig/configuration.nix
			];
		};

		homeConfigurations."${userName}" = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages."${system}";

			extraSpecialArgs = {inherit self userName;};
			modules = [
				./pc-config/homemanager/home.nix
			];
		};
  	};
}
