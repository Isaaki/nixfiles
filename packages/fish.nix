{ config, pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    settings = { };
  };

  programs.fish = {
    enable = true;

    plugins = [{
      name="foreign-env";
      src = pkgs.fetchFromGitHub {
         owner = "oh-my-fish";
         repo = "plugin-foreign-env";
         rev = "dddd9213272a0ab848d474d0cbde12ad034e65bc";
         sha256 = "00xqlyl3lffc5l0viin1nyp819wf81fncqyz87jx8ljjdhilmgbs";
      };
    }];

    shellInit = ''
      # nix
      fenv source ~/.nix-profile/etc/profile.d/nix.sh

      if test -e /home/isaaki/.nix-profile/etc/profile.d/nix.sh
        fenv source /home/isaaki/.nix-profile/etc/profile.d/nix.sh
      end 
      
      if test -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
         fenv source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
      end
    '';

    shellAliases = {
      v = "$EDITOR";
      vi = "$EDITOR";
      vim = "$EDITOR";
      gst = "git status";
      ".." = "cd ..";
      "..." = "cd ../../";
      cls = "clear";
    };
  };
}
