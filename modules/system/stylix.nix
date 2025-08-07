{ pkgs, config, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-dark.yaml";
    image = ../../dotfiles/wallpapers/nixos.png;
    polarity = "dark";


    fonts = {
      monospace = {
        package = pkgs.jetbrains-mono;
        name = "JetBrains Mono";
      };
    };

    cursor = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Ice";
        size = 20;
    };

    homeManagerIntegration.followSystem = true;

    targets = {
        grub.enable = false;
        plymouth.enable = false;
    };
  };

}
