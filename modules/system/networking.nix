{ pkgs, ... }:

{
  networking.hostName = "nixzimin";

  # Enable networking
  networking.networkmanager.enable = true;

  networking.firewall.trustedInterfaces = [ "tun0" ];
}
