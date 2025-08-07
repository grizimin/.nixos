{ inputs, config, pkgs, ... }:

{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  users.users.grizimin = {
    isNormalUser = true;
    description = "grizimin";
    extraGroups = [
      "networkmanager"
      "wheel"
      "vboxusers"
    ];
    packages = with pkgs; [ ];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    brightnessctl
    wget
    git
    firefox
    telegram-desktop
    gtk2
    gtk3
    gtk4
    unzip
    zip
    sing-box
    libgcc
    tree
    python3
    gcc
    bat
    fastfetch 
    nixfmt-rfc-style
    jdk
    btop
    p7zip
    mpv
    imv
    tmux
  ];

  programs.thunar.enable = true;


  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  system.stateVersion = "25.05";
}
