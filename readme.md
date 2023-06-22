# Nix / NixOS Config
- Terminal Emulator: Alacritty
- Shell: Fish
- Editor: Neovim

## Links
- [NixOS Search](https://search.nixos.org/packages)
- [Home-Manager Manual](https://nix-community.github.io/home-manager/index.html)
- [Home-Manager Option Search](https://mipmip.github.io/home-manager-option-search/)

## Installing
### NixOS
NixOS needs to do this first then follow **Home Manager setup**
```sh
# Clone the repo in home dir
git clone git@github.com:Isaaki/nixfiles.git
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

Add flakes to experimental-features
```sh
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

### Home Manager setup
Install Home-Manager and build flake
```sh
nix-shell -p home-manager
cd <Git Directory>
home-manager switch --flake .#isaaki
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

### Direnv

Add folder to direnv
```sh
echo "use nix" > .envrc && direnv allow
```

Remove direnv from folder
- Delete `.direnv/` and `.envrc`
- You could also use this command in root folder 
```sh
rm -r .envrc .direnv/
```

---

#### Tips
When using `home-manager switch` you may get an error that looks like this `error: getting status of '/nix/store/.../flake.nix': No such file or directory`
this is because there is an untracked file in the repo. To fix this add file to git and commit the new file/s. (https://github.com/NixOS/nix/issues/6642)
