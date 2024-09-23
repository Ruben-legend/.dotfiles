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
		lib = nixpkgs.lib;
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in {

		nixosConfigurations = {
			ruben-epic = lib.nixosSystem{
				inherit system;
				modules = [./user/configuration.nix];
			};
		};

		homeConfigurations = {
			ruben-epic = home-manager.lib.homeManagerConfiguration{
				inherit pkgs;
				modules = [./user/home.nix];
			};
		};
    
	};
}
