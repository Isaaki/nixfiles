{ config, pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    settings = { };
  };

  programs.fish = {
    enable = true;

    shellAliases = {
      # Set lsd as default ls and tree
      # ls = "lsd";
      # lr = "ls -R";
      # llr = "ls -lR";
      # tree = "ls --tree";

      vi = "$EDITOR";
      gst = "git status";
      ".." = "cd ..";
      "..." = "cd ../../";
      cls = "clear";
    };
  };
}
