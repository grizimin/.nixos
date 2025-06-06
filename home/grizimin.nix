{ config, pkgs, ... }:

{
  imports = [
    ./default.nix
    ../modules/home/vscode.nix
    ../modules/home/hyprland.nix
    ../modules/home/stylix.nix
    ../modules/home/zed.nix
  ];

  home.username = "grizimin";
  home.homeDirectory = "/home/grizimin";

  home.packages = with pkgs; [
  ];

  programs.git = {
    userName = "GriZimin";
    userEmail = "grizimin@gmail.com";
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
