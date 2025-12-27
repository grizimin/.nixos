{
  config,
  pkgs,
  inputs,
  ...
}:

{
  services.wpaperd.enable = true;
  services.wpaperd.settings = {
    any = {
      path = "/home/grizimin/.config/wallpapers/cyber";
      sorting = "random";
    };
  };
}
