{ pkgs, ... }:

{
  networking = {
      hostName = "nixzimin";

      networkmanager.enable = false;

      firewall.enable = false;
  };

}
