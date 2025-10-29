{
    imports = [
        ./hypridle.nix
        ./hyprland.nix
	./dunst.nix
    ];

    home.file = {
        #".config/hypr/hyprpaper.conf".source = ../../dotfiles/hypr/hyprpaper.conf;
        ".config/wallpapers/".source = ../../../dotfiles/wallpapers;
        ".config/hypr/hyprpaper.conf".source = ../../../dotfiles/hypr/hyprpaper.conf;
    };
}
