{ inputs, config, pkgs, ... }:

{
  imports = [
    ./default.nix
    ../modules/home/hypr
    ../modules/home/stylix.nix
    ../modules/home/kitty.nix
    ../modules/home/vscode.nix
    ../modules/home/plasma.nix
    inputs.zen-browser.homeModules.twilight
    inputs.mango.hmModules.mango
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

    libreoffice-qt
  ];

  programs.zen-browser = {
    enable = true;
  };
  
  programs.git = {
    userName = "GriZimin";
    userEmail = "grizimin@gmail.com";
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
