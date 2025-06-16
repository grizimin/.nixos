{ config, pkgs, ... }:

{
  stylix.enable = true;
  stylix.autoEnable = true;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-dark.yaml";
  stylix.image = ../../dotfiles/wallpapers/nixos.png;
  stylix.polarity = "dark";

  stylix.cursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 20;
  };

  stylix.fonts = {
    monospace = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };
  };
}
