{ pkgs, ... }:

{
  networking.hostName = "nixzimin";
  networking.wireless.enable = true;

  # Enable networking
  networking.networkmanager.enable = true;
}
