{ config, pkgs, pkgs-unstable, ... }:

{
  imports = [
    ./packages/neovim.nix
    ./packages/lazygit.nix
    ./packages/fish.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "isaaki";
  home.homeDirectory = "/home/isaaki";

    # Environment variables for Isaaki
  home.sessionVariables = {
    EDITOR = "nvim";
    GIT_EDITOR = "nvim";
    VISUAL = "nvim";
    DIFFPROG = "nvim -d";
    MANPAGER = "nvim +Man!";
  };

  # Basic Git configuration
  programs.git = {
    enable = true;
    userName = "Isak Mella";
    userEmail = "xisaacnewton1x@gmail.com";
    aliases = {
      uncommit = "reset --soft HEAD^";
    };
    extraConfig = {
      core.pager = "delta";
      interactive.diffFilter = "delta --color-only --features=interactive";
      delta = {
        features = "decoration";
        navigate = "true";
        side-by-side = "true";
        line-numbers = "false";
      };
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
    };
  };


  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    wget
    gcc
    xclip
    nodejs
    nodePackages.react-native-cli
    yarn
    python311
    python311Packages.pip
    go
    pkgs-unstable.cargo
    unzip
    ripgrep
    fd
    tree
    yt-dlp
    chezmoi
    delta
  ];
  
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
