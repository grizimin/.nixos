{ pkgs, ... }:

{
  services.minecraft-server = {
    enable = true;
    eula = true;
    declarative = true;
    serverProperties = {
      server-port = 43000;
      difficulty = 3;
      gamemode = 1;
      max-players = 5;
      motd = "NixOS Minecraft server!";
      white-list = true;
      allow-cheats = true;
    };
    jvmOpts = "-Xms4092M -Xmx4092M";
  };
}
