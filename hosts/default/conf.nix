# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/system/hyprland.nix
    ../../modules/home/stylix.nix
    ../../modules/system/nvidia.nix
    ../../modules/system/login-managers/ly.nix
    ../../modules/system/bootloaders/grub.nix
    ../../modules/system/pipewire.nix
    ../../modules/system/bluetooth.nix
    ../../modules/system/i18n.nix
    ../../modules/system/networking.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.grizimin = {
    isNormalUser = true;
    description = "grizimin";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
    shell = pkgs.zsh;
  };

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    home-manager
    wget
    git
    firefox
    ghostty
    telegram-desktop
    gtk2
    gtk3
    gtk4
    unzip
    zip
    hyprpanel
    sing-box
    libgcc
    tree
    python3
    gcc
    bat
    neofetch
    nixfmt-rfc-style
  ];

  programs.thunar.enable = true;

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  system.stateVersion = "24.11";
}
