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

### Nix
Install nix if not on NixOS [(Link to info)](https://nixos.org/download.html#download-nix) Linux OS should use this 
```sh 
sh <(curl -L https://nixos.org/nix/install) --daemon 
```

WSL should use this command 
```sh 
sh <(curl -L https://nixos.org/nix/install) --no-daemon 
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

### Setup Fish shell
- Run this command to append Fish binary file from Home Manager
```sh
sudo "/home/isaaki/.nix-profile/bin/fish" >> /etc/shells
```

- Then run this command, this sets fish as the default shell for this user
```sh
chsh -s ~/.nix-profile/bin/fish
```

---

#### Tips
When using `home-manager switch` you may get an error that looks like this `error: getting status of '/nix/store/.../flake.nix': No such file or directory`
this is because there is an untracked file in the repo. To fix this add file to git and commit the new file/s. (https://github.com/NixOS/nix/issues/6642)

#### Useful Commands
Adds directory to direnv and loads a shell.nix with correct dependencies
```sh
echo "use nix" > .envrc && direnv allow
```
