{ config, pkgs, lib, ... }:

{
  programs.lazygit = {
    enable = true;
    settings = {
      git = {
        paging = {
          colorArg = "always";
          useConfig = true;
        };
      };
    };
  };
}
