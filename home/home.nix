{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "isaaki";
  home.homeDirectory = "/home/isaaki";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    wget
    gcc
    git
    xclip
    nodejs
    python39
    cargo
    unzip
    ripgrep
    fd
    lazygit
    yt-dlp
    chezmoi
  ];

  # xdg.configFile."nvim/lua".source = ./nvim/lua;

  # xdg.configFile."nvim/lua".onChange = ''
  #   echo ":: NEOVIM - Run Packer Sync"
  #   nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
  # '';

  # programs.neovim = {
  #   enable = true;
  #   extraConfig = ''
  #     lua << EOF
  #     ${lib.strings.fileContents ./nvim/init.lua}
  #     EOF
  #   '';
  # };
  
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
