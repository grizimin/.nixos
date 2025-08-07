{
    imports = [
        ./hypridle.nix
        ./hyprland.nix
    ];

    home.file = {
        #".config/hypr/hyprpaper.conf".source = ../../dotfiles/hypr/hyprpaper.conf;
        ".config/wallpapers/".source = ../../../dotfiles/wallpapers;
        ".config/waybar/actual-style.css".source = ../../../dotfiles/waybar/actual-style.css;
        ".config/waybar/config.json".source = ../../../dotfiles/waybar/config.json;
        ".config/hypr/hyprpaper.conf".source = ../../../dotfiles/hypr/hyprpaper.conf;
    };
}
