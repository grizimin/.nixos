{
  inputs,
  config,
  pkgs,
  ...
}:

{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    brightnessctl
    wget
    git
    firefox
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
    jdk
    btop
    p7zip
    mpv
    imv
    tmux
    bottles
    nixfmt-rfc-style
  ];

  programs.thunar.enable = true;

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = ""; # sets NH_OS_FLAKE variable for you
  };

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  programs.nekoray = {
    enable = true;
    tunMode.enable = true;
  };

  system.stateVersion = "25.05";
}
