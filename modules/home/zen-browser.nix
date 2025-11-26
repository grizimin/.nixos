{ inputs, pkgs, config, ... }:

{
  programs.zen-browser = {
    enable = true;
    nativeMessagingHosts = [pkgs.firefoxpwa];

    profiles."default" = {
      containersForce = true;
      containers = {
        Space = {
          color = "purple";
          icon = "fingerprint";
          id = 1;
        };
      };
      spacesForce = true;
      spaces = let
        containers = config.programs.zen-browser.profiles."default".containers;
      in {
        "Space" = {
          id = "c6de089c-410d-4206-961d-ab11f988d40a";
          position = 1000;
        };
      };
    };
  };


  programs.zen-browser.policies = let
    mkExtensionSettings = builtins.mapAttrs (_: pluginId: {
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/${pluginId}/latest.xpi";
      installation_mode = "force_installed";
    });
    mkLockedAttrs = builtins.mapAttrs (_: value: {
      Value = value;
      Status = "locked";
    });
  in {
    ExtensionSettings = mkExtensionSettings {
      "wappalyzer@crunchlabz.com" = "wappalyzer";
      "{85860b32-02a8-431a-b2b1-40fbd64c9c69}" = "github-file-icons";
      "addon@darkreader.org" = "darkreader";
      "uBlock0@raymondhill.net" = "ublock-origin";
    };
    Preferences = mkLockedAttrs {
      "browser.tabs.warnOnClose" = false;
    };
  };

  programs.zen-browser.extraPrefsFiles = [
    (builtins.fetchurl {
      url = "https://raw.githubusercontent.com/MrOtherGuy/fx-autoconfig/master/program/config.js";
      sha256 = "1mx679fbc4d9x4bnqajqx5a95y1lfasvf90pbqkh9sm3ch945p40";
    })
  ];

  xdg.mimeApps = let
    value = let
      zen-browser = inputs.zen-browser.packages.${config.system}.twilight; # or twilight
    in
      zen-browser.meta.desktopFileName;

    associations = builtins.listToAttrs (map (name: {
        inherit name value;
      }) [
        "application/x-extension-shtml"
        "application/x-extension-xhtml"
        "application/x-extension-html"
        "application/x-extension-xht"
        "application/x-extension-htm"
        "x-scheme-handler/unknown"
        "x-scheme-handler/mailto"
        "x-scheme-handler/chrome"
        "x-scheme-handler/about"
        "x-scheme-handler/https"
        "x-scheme-handler/http"
        "application/xhtml+xml"
        "application/json"
        "text/plain"
        "text/html"
      ]);
  in {
    associations.added = associations;
    defaultApplications = associations;
  };
}
