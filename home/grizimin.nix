{
  inputs,
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./default.nix
    ../modules/home/hypr
    ../modules/home/stylix.nix
    ../modules/home/kitty.nix
    ../modules/home/vscode.nix
    ../modules/home/quickshell.nix
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
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    obsidian
    #davinci-resolve
    #blender
    telegram-desktop
    nautilus

    pinta
    rustup

    obs-studio

    libreoffice-qt
    jetbrains.clion
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
