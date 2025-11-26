{ inputs, config, pkgs, ... }:

{
  imports = [
    ./default.nix
    ../modules/home/hypr
    ../modules/home/stylix.nix
    ../modules/home/kitty.nix
    ../modules/home/vscode.nix
    #../modules/home/mango.nix
    ../modules/home/wpaperd.nix
    #inputs.mango.hmModules.mango
    inputs.zen-browser.homeModules.twilight
    ../modules/home/zen-browser.nix
    ../modules/home/foot.nix
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
    nautilus

    pinta
    rustup

    teamspeak5_client

    obs-studio

    libreoffice-qt
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
