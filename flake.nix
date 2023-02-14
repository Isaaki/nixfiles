{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  
  outputs = { self, nixpkgs, home-manager, ... }: 
    let 
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
	config.allowUnfree = true;
      };
      
      user = "isaaki";
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
	isaaki = lib.nixosSystem {
	  inherit system;
	  modules = [ ./system/configuration.nix ];
	};
      };

      homeConfigurations = {
        isaaki = home-manager.lib.homeManagerConfiguration {
	  inherit pkgs;

          # Specify your home configuration modules here, for example,
          # the path to your home.nix.
          modules = [
            ./home/home.nix
          ];

          # Optionally use extraSpecialArgs
          # to pass through arguments to home.nix
	};
      };
    };
}
