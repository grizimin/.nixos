{ config, pkgs, ... }:

{
  home.file = {
    ".config/hypr/hyprland.conf".source = ../../dotfiles/hypr/hyprland.conf;
    ".config/hypr/hyprpaper.conf".source = ../../dotfiles/hypr/hyprpaper.conf;
    ".config/wallpapers/".source = ../../dotfiles/wallpapers;
  };

  home.packages = with pkgs; [
    hyprpaper
    waybar
    rofi-wayland
    hyprshot
    wl-clipboard
  ];
}
