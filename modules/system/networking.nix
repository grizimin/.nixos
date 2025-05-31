{ pkgs, ... }:

{
  networking.hostName = "nixzimin";

  # Enable networking
  networking.networkmanager.enable = true;
}
