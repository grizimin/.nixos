{
  pkgs,
  config,
  inputs,
  ...
}:

{
  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    swaylock
    xwayland-satellite
  ];
}
