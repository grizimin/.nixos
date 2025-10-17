{ inputs, pkgs, ... }:

{
    dconf = {
      enable = true;
      settings = {
        "org/gnome/shell" = {
          enabled-extensions = with pkgs; [
            gnomeExtensions.forge.extensionUuid
          ];
        };
      };
    };
}
