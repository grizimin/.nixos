{ config, pkgs, ... }:

{
  home.file = {
    ".config/hypr/hyprland.conf".source = ../../dotfiles/hypr/hyprland.conf;
    ".config/hypr/hyprpaper.conf".source = ../../dotfiles/hypr/hyprpaper.conf;
    ".config/wallpapers/".source = ../../dotfiles/wallpapers;
  };

  stylix.targets.waybar.enable = true;
  programs.waybar.enable = true;

  home.packages = with pkgs; [
    hyprpaper
    waybar
    rofi-wayland
    hyprshot
    wl-clipboard
  ];
}
