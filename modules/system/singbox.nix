{ config, ... }:

{
    #networking.proxy.default = "127.0.0.1:2080";
  systemd.services.singbox = {
    description = "Sing-box Proxy Service";
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" ];
    serviceConfig = {
      ExecStart = "/run/current-system/sw/bin/sing-box run -c /etc/singbox/config.json";
      Restart = "always";
      DynamicUser = false;
    };
  };
}
