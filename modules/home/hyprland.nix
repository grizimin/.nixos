{ config, pkgs, ... }:

{
  home.file = {
    ".config/hypr/hyprland.conf".source = ../../dotfiles/hypr/hyprland.conf;
    ".config/hypr/hyprpaper.conf".source = ../../dotfiles/hypr/hyprpaper.conf;
    ".config/wallpapers/".source = ../../dotfiles/wallpapers;
  };

  stylix.targets.waybar.enable = true;
  programs.waybar.enable = true;
  programs.hyprlock.enable = true;

  home.packages = with pkgs; [
    hyprpaper
    waybar
    rofi-wayland
    hyprshot
    wl-clipboard
  ];
    
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        lock_cmd = "hyprlock";

        before_sleep_cmd = "hyprlock";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [
        {
          timeout = 600;
          on-timeout = "hyprlock";
        }
        {
          timeout = 900;
          on-timeout = "hyprctl dispatch dpms off";

          on-resume = "hyprctl dispatch dpms on";
        }
        {
          timeout = 1800;
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };

}
