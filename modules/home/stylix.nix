{ config, pkgs, ... }:

{
    stylix.targets = {
        waybar.enable = true;
        vscode.enable = false;
        zed.enable = false;
        hyprland.enable = false;
    };
}
