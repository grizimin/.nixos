{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;

    userSettings = {
      hour_format = "hour24";
      auto_update = true;
      vim_mode = true;
    };
  };
}
