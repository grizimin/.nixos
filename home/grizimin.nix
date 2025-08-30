{ inputs, config, pkgs, ... }:

{
  imports = [
    ./default.nix
    ../modules/home/hypr
    ../modules/home/stylix.nix
    ../modules/home/kitty.nix
    ../modules/home/vscode.nix
  ];

  home.username = "grizimin";
  home.homeDirectory = "/home/grizimin";
  
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    obsidian
        #davinci-resolve
        #blender
    telegram-desktop
    zed-editor
    pkgs.prismlauncher
    nautilus

    pinta
    rustup

    iptables
    ipset

    legcord

    teamspeak5_client

    obs-studio
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
