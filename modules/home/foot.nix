{ config, pkgs, inputs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main.font = "monospace:size=15";
      colors = {
        alpha = 0.0;
        alpha-mode = "all";

        regular0=config.lib.stylix.colors.base00;
        regular1=config.lib.stylix.colors.base01;
        regular2=config.lib.stylix.colors.base02;
        regular3=config.lib.stylix.colors.base03;
        regular4=config.lib.stylix.colors.base04;
        regular5=config.lib.stylix.colors.base05;
        regular6=config.lib.stylix.colors.base06;
        regular7=config.lib.stylix.colors.base07;
        bright0=config.lib.stylix.colors.base07;
        bright1=config.lib.stylix.colors.base09;
        bright2=config.lib.stylix.colors.base0A;
        bright3=config.lib.stylix.colors.base0B;
        bright4=config.lib.stylix.colors.base0C;
        bright5=config.lib.stylix.colors.base0D;
        bright6=config.lib.stylix.colors.base0E;
        bright7=config.lib.stylix.colors.base0F;
      };
    };
  };
}
