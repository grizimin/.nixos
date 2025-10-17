{ config, pkgs, ... }:

{
  ### THEME
gtk.enable = true;
  #gtk.theme.package = pkgs.adw-gtk3;
  #gtk.theme.name = "adw-gtk3";

  qt.enable = true;
  #qt.platformTheme.name = "gtk";

  home.file = {
    ".config/ghostty/config".source = ../dotfiles/ghostty/config;
    ".config/rofi/config.rasi".source = ../dotfiles/rofi/config.rasi;
    ".config/rofi/theme.rasi".source = ../dotfiles/rofi/theme.rasi;
    ".config/rofi/onedark.rasi".source = ../dotfiles/rofi/onedark.rasi;
    ".config/wallpapers/terminal.png".source = ../dotfiles/wallpapers/terminal.png;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "24";
  };

  ### PROGRAMS

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      gs = "git status";
      ll = "ls -l";
      nrs = "sudo nixos-rebuild switch --flake";
      hrs = "home-manager switch --flake";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
      theme = "robbyrussell";
    };

    history.size = 10000;
  };

  programs.home-manager.enable = true;
  home.stateVersion = "25.05";
}
