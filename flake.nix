{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }: 
  let 
    system = "x86_64-linux";

    # pkgs = import nixpkgs {
    #   inherit system;
    #   legacyPackages.${system};
    #   config.allowUnfree = true;
    # };
    # pkgsUnstable = import <nixpkgs-unstable> {
    #   inherit system;
    #   legacyPackages.${system};
    #   config.allowUnfree = true;
    # };

    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};

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
        modules = [
          ./home.nix
        ];
        extraSpecialArgs = {
          inherit pkgs-unstable;
        };
      };
    };
  };
}
