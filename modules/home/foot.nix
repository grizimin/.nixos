{
  config,
  pkgs,
  inputs,
  ...
}:

{
  programs.foot = {
    enable = true;
    settings = {
      main.font = "monospace:size=15";
      colors = {
        alpha = 0.0;
        alpha-mode = "all";
      };
    };
  };
}
