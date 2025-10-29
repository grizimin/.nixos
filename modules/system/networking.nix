{ pkgs, ... }:

{
  networking = {
      hostName = "nixzimin";

      networkmanager.enable = true;

      firewall.enable = false;
  };

}
