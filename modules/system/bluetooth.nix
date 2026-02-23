{ pkgs, ... }:

{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings.General = {
      Experimental = true;
      FastConnectable = true;
      Enable = "Source,Sink,Media,Socket";
    };
    settings.Policy.autoEnable = true;
  };

  services.blueman.enable = true;
}
