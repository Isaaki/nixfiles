{ config, pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    settings = { };
  };

  programs.fish = {
    enable = false;

    shellAliases = {
      vi = "$EDITOR";
      gst = "git status";
      ".." = "cd ..";
      "..." = "cd ../../";
      cls = "clear";
    };
  };
}
