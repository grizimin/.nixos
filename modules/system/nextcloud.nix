{ pkgs, ... }:

{
    environment.etc."nextcloud-admin-pass".text = "password";
    services.nextcloud = {
      enable = true;
      package = pkgs.nextcloud31;
      hostName = "192.168.0.109";
      config.adminpassFile = "/etc/nextcloud-admin-pass";
      config.dbtype = "sqlite";
    };

}
