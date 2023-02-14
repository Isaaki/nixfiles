{ config, pkgs, lib, ... }:

{
  xdg.configFile."nvim/lua".source = ./nvim/lua;

  xdg.configFile."nvim/lua".onChange = ''
    echo ":: NEOVIM - Run Packer Sync"
    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
  '';

  programs.neovim = {
    enable = true;
    extraConfig = ''
      lua << EOF
      ${lib.strings.fileContents ./nvim/init.lua}
      EOF
    '';
  };
}
