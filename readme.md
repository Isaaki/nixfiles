# Nix / NixOS Config
- Terminal Emulator: Alacritty
- Shell: Fish
- Editor: Neovim

## Installing
### NixOS
NixOS needs to do this first then follow **Home Manager setup**
```sh
cd <Git Directory>
sudo nixos-rebuild switch --flake .#isaaki
```

### Home Manager setup
First time initialization (Do this once and never again)
```sh
cd <Git Directory>
nix --extra-experimental-features "nix-command flakes" build --no-link .#homeConfigurations.isaaki.activationPackage
"$(nix --extra-experimental-features "nix-command flakes" path-info .#homeConfigurations.isaaki.activationPackage)"/activate
```

To update home-manager
```sh
cd <Git Directory>
home-manager switch --flake .#isaaki
```
