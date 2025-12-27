{ config, pkgs, ... }:

{
  stylix.targets = {
    waybar.enable = false;
    vscode.enable = false;
    zed.enable = false;
    hyprland.enable = false;
    foot.enable = false;
    kitty.enable = false;
  };
}
