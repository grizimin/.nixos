{ inputs, config, pkgs, ... }:

{
  imports = [
    ./default.nix
    ../modules/home/hypr
    ../modules/home/stylix.nix
    ../modules/home/kitty.nix
  ];

  home.username = "grizimin";
  home.homeDirectory = "/home/grizimin";
  
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    obsidian
        #davinci-resolve
        #blender
    #yandex-music
    zed-editor
    pkgs.prismlauncher
    nautilus

    rustup
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
